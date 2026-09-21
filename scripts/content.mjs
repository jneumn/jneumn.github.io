import { readdir, readFile, mkdir, writeFile } from 'node:fs/promises';
import path from 'node:path';
import matter from 'gray-matter';
import { siteUrl } from '../lib/site-url.mjs';
import { unified } from 'unified';
import remarkParse from 'remark-parse';
import remarkGfm from 'remark-gfm';
import remarkMath from 'remark-math';
import remarkRehype from 'remark-rehype';
import rehypeMathjax from 'rehype-mathjax/svg';
import rehypeStringify from 'rehype-stringify';
import { headingNavigation } from './heading-navigation.mjs';

function localUrls() {
  return function transform(node) {
    if (node.type === 'element') {
      for (const key of ['href', 'src']) {
        if (typeof node.properties?.[key] === 'string') node.properties[key] = siteUrl(node.properties[key]);
      }
    }
    for (const child of node.children || []) transform(child);
  };
}

const processor = unified().use(remarkParse).use(remarkGfm).use(remarkMath)
  .use(remarkRehype).use(headingNavigation).use(localUrls).use(rehypeMathjax).use(rehypeStringify);

export async function readPosts(directory) {
  const files = (await readdir(directory)).filter(name => name.endsWith('.md'));
  const posts = await Promise.all(files.map(async filename => {
    const slug = filename.slice(0, -3);
    const fail = message => { throw new Error(`${filename}: ${message}`); };
    if (!/^[a-z0-9]+(?:-[a-z0-9]+)*$/.test(slug)) fail('use a lowercase, hyphen-separated filename');
    const { data, content } = matter(await readFile(path.join(directory, filename), 'utf8'));
    if (typeof data.title !== 'string' || !data.title.trim()) fail('title is required');
    const date = data.date instanceof Date ? data.date.toISOString().slice(0, 10) : data.date;
    if (typeof date !== 'string' || !/^\d{4}-\d{2}-\d{2}$/.test(date) || !Number.isFinite(Date.parse(date)) || new Date(date).toISOString().slice(0, 10) !== date) fail('date must be a valid YYYY-MM-DD date');
    if (data.tags !== undefined && (!Array.isArray(data.tags) || data.tags.some(tag => typeof tag !== 'string' || !/^[a-z0-9]+(?:-[a-z0-9]+)*$/.test(tag)))) fail('tags must be a list of lowercase, hyphen-separated names');
    if (data.description !== undefined && typeof data.description !== 'string') fail('description must be text');
    if (data.draft !== undefined && typeof data.draft !== 'boolean') fail('draft must be true or false');
    if (data.toc !== undefined && typeof data.toc !== 'boolean') fail('toc must be true or false');
    if (data.draft) return null;
    const rendered = await processor.process({ value: content, data: { toc: data.toc === true } });
    if (rendered.messages.length) fail(rendered.messages.map(message => message.message).join('; '));
    return { slug, title: data.title.trim(), date, tags: [...new Set(data.tags ?? [])], description: data.description ?? '', html: String(rendered) };
  }));
  return posts.filter(Boolean).sort((a, b) => b.date.localeCompare(a.date) || a.slug.localeCompare(b.slug));
}

export async function generatePosts(root = process.cwd()) {
  const posts = await readPosts(path.join(root, 'content/posts'));
  const directory = path.join(root, 'lib/generated');
  await mkdir(directory, { recursive: true });
  const target = path.join(directory, 'posts.json');
  const next = JSON.stringify(posts, null, 2) + '\n';
  const previous = await readFile(target, 'utf8').catch(() => '');
  if (previous !== next) await writeFile(target, next);
}

export function markdownPosts() {
  return {
    name: 'markdown-posts',
    async buildStart() { await generatePosts(); },
    configureServer(server) {
      const directory = path.resolve('content/posts');
      server.watcher.add(directory);
      let queued = Promise.resolve();
      const update = filename => {
        if (!filename.startsWith(directory + path.sep) || !filename.endsWith('.md')) return;
        queued = queued.then(() => generatePosts()).then(() => {
          server.ws.send({ type: 'full-reload' });
        }).catch(error => {
          server.config.logger.error(error.message);
          server.ws.send({ type: 'error', err: { message: error.message, stack: '' } });
        });
      };
      server.watcher.on('add', update).on('change', update).on('unlink', update);
    },
  };
}
