import test from 'node:test';
import assert from 'node:assert/strict';
import { mkdtemp, writeFile, unlink, rm } from 'node:fs/promises';
import { tmpdir } from 'node:os';
import path from 'node:path';
import { readPosts } from './content.mjs';

async function fixture(t) {
  const directory = await mkdtemp(path.join(tmpdir(), 'math-blog-'));
  t.after(() => rm(directory, { recursive: true, force: true }));
  return directory;
}
const header = '---\ntitle: Example\ndate: "2026-09-05"\ntags: [algebra, algebra]\n---\n';

test('Markdown and inline, display, aligned math render without external scripts', async t => {
  const directory = await fixture(t);
  await writeFile(path.join(directory, 'example.md'), header + '# Proof\n\nInline $n^2$.\n\n$$\n\\begin{aligned}a&=b\\\\c&=d\\end{aligned}\n$$\n\n`$notmath$`\n\n<script>alert(1)</script>');
  const [post] = await readPosts(directory);
  assert.match(post.html, /<h1>Proof<\/h1>/);
  assert.match(post.html, /<mjx-container/);
  assert.match(post.html, /display="true"/);
  assert.match(post.html, /<svg/);
  assert.match(post.html, /<code>\$notmath\$<\/code>/);
  assert.doesNotMatch(post.html, /<script/);
  assert.deepEqual(post.tags, ['algebra']);
});

test('create, edit, delete, draft exclusion, and newest-first ordering', async t => {
  const directory = await fixture(t);
  const filename = path.join(directory, 'example.md');
  await writeFile(filename, header + 'First version');
  await writeFile(path.join(directory, 'older.md'), header.replace('2026-09-05', '2026-09-04') + 'Older');
  await writeFile(path.join(directory, 'draft.md'), header.replace('title: Example', 'draft: true\ntitle: Draft') + 'Secret draft');
  assert.deepEqual((await readPosts(directory)).map(post => post.slug), ['example', 'older']);
  await writeFile(filename, header + 'Revised version');
  assert.match((await readPosts(directory))[0].html, /Revised version/);
  await unlink(filename);
  assert.deepEqual((await readPosts(directory)).map(post => post.slug), ['older']);
  await unlink(path.join(directory, 'older.md'));
  assert.deepEqual(await readPosts(directory), []);
});

test('invalid metadata fails with a filename and helpful error', async t => {
  const directory = await fixture(t);
  const filename = path.join(directory, 'example.md');
  await writeFile(filename, header.replace('2026-09-05', '2026-02-31'));
  await assert.rejects(readPosts(directory), /example.md: date must/);
  await writeFile(filename, header.replace('[algebra, algebra]', '["bad tag"]'));
  await assert.rejects(readPosts(directory), /example.md: tags must/);
  await writeFile(filename, header.replace('title: Example', 'title:'));
  await assert.rejects(readPosts(directory), /example.md: title is required/);
});

test('Markdown links and images respect the GitHub Pages repository path', async t => {
  const directory = await fixture(t);
  await writeFile(path.join(directory, 'links.md'), header + '[Posts](/posts)\n\n![Diagram](/images/diagram.png)\n\n[External](https://example.com)');
  const previous = process.env.NEXT_PUBLIC_BASE_PATH;
  try {
    process.env.NEXT_PUBLIC_BASE_PATH = '/my-blog';
    const [post] = await readPosts(directory);
    assert.match(post.html, /href="\/my-blog\/posts\/"/);
    assert.match(post.html, /src="\/my-blog\/images\/diagram.png"/);
    assert.match(post.html, /href="https:\/\/example.com"/);
  } finally {
    if (previous === undefined) delete process.env.NEXT_PUBLIC_BASE_PATH;
    else process.env.NEXT_PUBLIC_BASE_PATH = previous;
  }
});

test('opt-in contents links target unique headings and preserve nested sections', async t => {
  const directory = await fixture(t);
  await writeFile(path.join(directory, 'contents.md'), header.replace('title: Example', 'title: Example\ntoc: true') +
    '## Introduction\n\n### A *detail*\n\n## Introduction\n\n## Introduction-1');
  const [post] = await readPosts(directory);
  assert.match(post.html, /<nav class="post-toc" aria-label="Table of contents">/);
  assert.match(post.html, /href="#introduction">Introduction<\/a><ol><li><a href="#a-detail">A detail<\/a>/);
  for (const id of ['introduction', 'a-detail', 'introduction-1', 'introduction-1-1']) {
    assert.match(post.html, new RegExp(`href="#${id}"`));
    assert.match(post.html, new RegExp(`<h[23] id="${id}">`));
  }
  await writeFile(path.join(directory, 'contents.md'), header + '## Introduction');
  assert.doesNotMatch((await readPosts(directory))[0].html, /post-toc/);
});

test('FFT post preserves Python code and all contents targets under a Pages base path', async () => {
  const previous = process.env.NEXT_PUBLIC_BASE_PATH;
  try {
    process.env.NEXT_PUBLIC_BASE_PATH = '/my-blog';
    const post = (await readPosts(path.resolve('content/posts'))).find(post => post.slug === 'fast-fourier-transform');
    assert.ok(post);
    assert.match(post.html, /<pre><code class="language-python">import cmath\nimport math/);
    assert.match(post.html, /\n    for _ in range\(n\):\n        result = \(result &#x3C;&#x3C; 1\)/);
    assert.match(post.html, /\n    return c\n<\/code><\/pre>/);
    const nav = post.html.match(/<nav class="post-toc"[\s\S]*?<\/nav>/)?.[0];
    assert.ok(nav);
    const links = [...nav.matchAll(/href="#([^"]+)"/g)];
    assert.equal(links.length, 6);
    for (const [, id] of links) assert.match(post.html, new RegExp(`<h[23] id="${id}">`));
    assert.doesNotMatch(post.html, /data-mjx-error/);
  } finally {
    if (previous === undefined) delete process.env.NEXT_PUBLIC_BASE_PATH;
    else process.env.NEXT_PUBLIC_BASE_PATH = previous;
  }
});
