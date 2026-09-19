import { siteUrl } from '@/lib/site-url.mjs';
import { notFound } from 'next/navigation';
import { posts, tags } from '@/lib/posts';
import { PostList } from '@/app/post-list';
type Props = { params: Promise<{ tag: string }> };
export function generateStaticParams() { return tags.map(tag => ({ tag })); }
export async function generateMetadata({ params }: Props) { return { title: `Posts tagged ${(await params).tag}` }; }
export default async function TagPage({ params }: Props) {
  const { tag } = await params;
  if (!tags.includes(tag)) notFound();
  return <main><nav><a href={siteUrl("/posts")}>All posts</a></nav><h1>Posts tagged “{tag}”</h1><PostList posts={posts.filter(post => post.tags.includes(tag))} /></main>;
}
