import { readdir, readFile, mkdir, writeFile } from 'node:fs/promises';
import path from 'node:path';

// Export without trailingSlash to avoid redirects during Vinext prerendering,
// then add directory indexes for portable static hosting (including Pages).
const output = path.resolve('dist/client');
async function visit(directory) {
  for (const entry of await readdir(directory, { withFileTypes: true })) {
    const file = path.join(directory, entry.name);
    if (entry.isDirectory()) await visit(file);
    else if (entry.name.endsWith('.html') && !['index.html', '404.html'].includes(entry.name)) {
      const destination = file.slice(0, -5);
      await mkdir(destination, { recursive: true });
      await writeFile(path.join(destination, 'index.html'), await readFile(file));
    }
  }
}
await visit(output);
