import { siteUrl } from '@/lib/site-url.mjs';
import { formatDate, type Post } from '@/lib/posts';
export function TagLinks({ tags }: { tags: string[] }) {
  return <span className="tags">{tags.map((tag, index) => <span key={tag}>{index > 0 && ', '}<a href={siteUrl(`/tags/${tag}`)}>{tag}</a></span>)}</span>;
}
export function PostList({ posts }: { posts: Post[] }) {
  if (!posts.length) return <p>No posts yet.</p>;
  return <ul className="post-list">{posts.map(post => <li key={post.slug}>
    <a href={siteUrl(`/posts/${post.slug}`)}>{post.title}</a>
    <p className="meta"><time dateTime={post.date}>{formatDate(post.date)}</time>{post.tags.length > 0 && <> · <TagLinks tags={post.tags} /></>}</p>
    {post.description && <p>{post.description}</p>}
  </li>)}</ul>;
}
