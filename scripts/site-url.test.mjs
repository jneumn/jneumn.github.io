import test from 'node:test';
import assert from 'node:assert/strict';
import { siteUrl } from '../lib/site-url.mjs';

test('root and repository paths preserve downloads, fragments, and external links', () => {
  const previous = process.env.NEXT_PUBLIC_BASE_PATH;
  try {
    process.env.NEXT_PUBLIC_BASE_PATH = '/my-blog';
    assert.equal(siteUrl('/'), '/my-blog/');
    assert.equal(siteUrl('/posts/example'), '/my-blog/posts/example/');
    assert.equal(siteUrl('/posts/example#proof'), '/my-blog/posts/example/#proof');
    assert.equal(siteUrl('/downloads/notes.pdf'), '/my-blog/downloads/notes.pdf');
    assert.equal(siteUrl('/stickers/math.gif'), '/my-blog/stickers/math.gif');
    assert.equal(siteUrl('https://example.com'), 'https://example.com');
    assert.equal(siteUrl('mailto:jakob.nmnn@outlook.de'), 'mailto:jakob.nmnn@outlook.de');
    assert.equal(siteUrl('#proof'), '#proof');
    process.env.NEXT_PUBLIC_BASE_PATH = '';
    assert.equal(siteUrl('/posts'), '/posts/');
  } finally {
    if (previous === undefined) delete process.env.NEXT_PUBLIC_BASE_PATH;
    else process.env.NEXT_PUBLIC_BASE_PATH = previous;
  }
});
