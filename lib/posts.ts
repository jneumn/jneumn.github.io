import data from './generated/posts.json';
export type Post = { slug: string; title: string; date: string; tags: string[]; description: string; html: string };
export const posts: Post[] = data;
export const tags = [...new Set(posts.flatMap(post => post.tags))].sort();
export function formatDate(date: string) {
  return new Intl.DateTimeFormat('en-GB', { day: 'numeric', month: 'long', year: 'numeric', timeZone: 'UTC' }).format(new Date(date));
}
