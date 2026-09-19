import { siteUrl } from '@/lib/site-url.mjs';
export default function NotFound() {
  return <main><h1>Page not found</h1><p>This page does not exist.</p><a href={siteUrl("/posts")}>All posts</a></main>;
}
