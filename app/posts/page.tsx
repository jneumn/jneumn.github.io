import type { Metadata } from 'next';
import { posts, tags } from '@/lib/posts';
import { PostList, TagLinks } from '@/app/post-list';
export const metadata: Metadata = { title: 'Posts' };
export default function PostsPage() {
  return <main><h1>Posts</h1>{tags.length > 0 && <p>Tags: <TagLinks tags={tags} /></p>}<PostList posts={posts} /></main>;
}
