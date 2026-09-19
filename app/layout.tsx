import type { Metadata } from 'next';
import './globals.css';
import { SiteNav } from './site-nav';
export const metadata: Metadata = {
  title: { default: 'About — Jakob', template: '%s — Jakob' },
  description: 'Mathematical exercises, puzzles, and notes.',
};
export default function RootLayout({ children }: { children: React.ReactNode }) {
  return <html lang="en"><body><header className="site-header"><p className="site-name">Jakob Neumann</p><SiteNav /></header>{children}</body></html>;
}
