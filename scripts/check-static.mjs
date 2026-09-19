import { readFile, access, writeFile } from 'node:fs/promises';
import path from 'node:path';
import { readPosts } from './content.mjs';

const output = path.resolve('dist/client');
const posts = await readPosts(path.resolve('content/posts'));
const routes = ['index.html', 'about/index.html', 'posts/index.html', 'projects/index.html', '404.html',
  ...posts.map(post => `posts/${post.slug}/index.html`),
  ...[...new Set(posts.flatMap(post => post.tags))].map(tag => `tags/${tag}/index.html`)];
const base = (process.env.NEXT_PUBLIC_BASE_PATH || '').replace(/\/$/, '');
for (const route of routes) {
  const html = await readFile(path.join(output, route), 'utf8');
  for (const match of html.matchAll(/(?:href|src)="(\/[^"\s]*)"/g)) {
    const url = match[1].replaceAll('&amp;', '&');
    if (url.startsWith('//')) continue;
    if (base && !url.startsWith(base + '/')) throw new Error(`${route}: link escapes repository path: ${url}`);
    const pathname = decodeURIComponent(url.slice(base.length).split(/[?#]/)[0]);
    const relative = pathname.replace(/^\//, '');
    const candidates = [relative, path.join(relative, 'index.html'), relative + '.html'];
    let found = false;
    for (const candidate of candidates) {
      try { await access(path.join(output, candidate)); found = true; break; } catch {}
    }
    if (!found) throw new Error(`${route}: missing local asset or page: ${url}`);
  }
}
await writeFile(path.join(output, '.nojekyll'), '');
console.log(`Verified ${routes.length} static pages and their local links${base ? ` under ${base}` : ''}.`);
