import { siteUrl } from '@/lib/site-url.mjs';
import { notFound } from 'next/navigation';
import { posts, formatDate } from '@/lib/posts';
import { TagLinks } from '@/app/post-list';
type Props = { params: Promise<{ slug: string }> };
export function generateStaticParams() { return posts.map(({ slug }) => ({ slug })); }
export async function generateMetadata({ params }: Props) {
  const { slug } = await params;
  const post = posts.find(post => post.slug === slug);
  return { title: post?.title ?? 'Post not found', description: post?.description };
}
export default async function PostPage({ params }: Props) {
  const { slug } = await params;
  const post = posts.find(post => post.slug === slug);
  if (!post) notFound();
  return <main><nav><a href={siteUrl("/posts")}>All posts</a></nav><article>
    <h1>{post.title}</h1><p className="meta"><time dateTime={post.date}>{formatDate(post.date)}</time>{post.tags.length > 0 && <> · <TagLinks tags={post.tags} /></>}</p>
    <div dangerouslySetInnerHTML={{ __html: post.html }} />
  </article></main>;
}
