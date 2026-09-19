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
