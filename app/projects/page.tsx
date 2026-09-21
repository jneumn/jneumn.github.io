import { siteUrl } from '@/lib/site-url.mjs';
import type { Metadata } from 'next';

export const metadata: Metadata = {
  title: 'Projects',
  description: 'Programming experiments, mathematical visualisations, a number theory presentation, and algebra lecture notes by Jakob.',
};

export default function ProjectsPage() {
  return (
    <main>
      <h1>Projects</h1>
      <section aria-labelledby="algebra-notes">
        <h2 id="algebra-notes">Algebra I lecture notes (2026)</h2>
        <p>German notes based on Harald Grobner’s Algebra I lectures in the winter semester 2025/26, with additional explanations and supplementary material. Topics include rings, polynomials, field extensions, Galois theory, and groups.</p>
        <p><a href={siteUrl("/downloads/algebra-i-notes.pdf")}>Download PDF</a> · <a href={siteUrl("/downloads/algebra-i-notes.tm")} download>Download TeXmacs source</a></p>
      </section>

      <section aria-labelledby="minecraft-packet-interceptor">
        <h2 id="minecraft-packet-interceptor">Minecraft packet interceptor (2021)</h2>
        <p>A C# proxy for inspecting (and modifying) traffic between a Minecraft client and server. The code includes compression, login encryption, and hooks for handling individual packets across all Minecraft versions.</p>
        <p><a href={siteUrl("/downloads/minecraft-packet-interceptor-source.zip")} download>Download source code</a> <span className="meta">(ZIP)</span></p>
      </section>

      <section aria-labelledby="number-theory">
        <h2 id="number-theory">Introduction to number-theoretical algorithms (2023)</h2>
        <p>A recorded presentation on algorithms in number theory.</p>
        <p><a href="https://www.youtube.com/watch?v=KRbbOhPMIcc">Watch</a> <span className="meta">(YouTube)</span></p>
      </section>

      <section aria-labelledby="fourier-epicycles">
        <h2 id="fourier-epicycles">Fourier epicycle drawer (2022)</h2>
        <p>A drawing visualization using the discrete Fourier transform in Rust. The idea is that the points encoded in an SVG file can be thought of as points we can parametrize with respect to time. We then apply DFT onto the resulting function.</p>
        <p><a href="https://www.youtube.com/watch?v=tCs6ev1BQu0">Watch</a> <span className="meta">(YouTube)</span></p>
      </section>

      <section aria-labelledby="k-means-quantizer">
        <h2 id="k-means-quantizer">K-means quantizer (2020)</h2>
        <p>An early C# experiment in vector quantization using k-means, exploring how points can be grouped into clusters represented by centroids.</p>
        <p><a href={siteUrl("/downloads/k-means-quantizer-source.zip")} download>Download source code</a> <span className="meta">(ZIP)</span></p>
      </section>
    </main>
  );
}
