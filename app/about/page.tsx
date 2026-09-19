import { siteUrl } from '@/lib/site-url.mjs';
import type { Metadata } from 'next';
import { stickers } from './stickers';

export const metadata: Metadata = {
  title: 'About',
  description: 'About this website.',
};

export default function AboutPage() {
  return (
    <main>
      <h1>About</h1>
      <p>Hello! I’m Jakob. I am a math student at the <a href="https://www.univie.ac.at/">University of Vienna</a>.</p>
      <p>I use this space to write about mathematics and tech. You can find my posts in <a href={siteUrl("/posts")}>posts</a>, and other things I’m working on (or have worked on) under <a href={siteUrl("/projects")}>projects</a>.</p>
      <p>If you wish to contact me, my email address is <a href="mailto:jakob.nmnn@outlook.de">jakob.nmnn@outlook.de</a>.</p>
      <p>Aside from mathematics, my hobbies include composition and Mandarin Chinese. I also currently hold the world record for <a href="https://www.youtube.com/watch?v=xGDIjeaSXPw">identifying all 193 UN member states on a map</a>.</p>
      <ul className="stickers" aria-label="Stickers">
        {stickers.map(sticker => (
          <li key={sticker.file}>
            <a href={siteUrl(sticker.href)} title={sticker.label}>
              <img src={siteUrl(`/stickers/${sticker.file}`)} alt={sticker.label} width={88} height={31} />
            </a>
          </li>
        ))}
      </ul>
    </main>
  );
}
