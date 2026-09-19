'use client';

import { siteUrl } from '@/lib/site-url.mjs';

import { usePathname } from 'next/navigation';

const pages = [
  { href: '/', label: 'About' },
  { href: '/posts', label: 'Posts' },
  { href: '/projects', label: 'Projects' },
  { href: 'mailto:jakob.nmnn@outlook.de', label: 'Contact' },
];

export function SiteNav() {
  const currentPath = usePathname() || '/';
  const base = process.env.NEXT_PUBLIC_BASE_PATH || '';
  const localPath = base && (currentPath === base || currentPath.startsWith(`${base}/`))
    ? currentPath.slice(base.length) : currentPath;
  const pathname = localPath.replace(/\/$/, '') || '/';
  return (
    <nav aria-label="Main navigation" className="site-nav">
      {pages.map(({ href, label }, index) => (
        <span key={href}>
          {index > 0 && <span aria-hidden="true"> · </span>}
          <a href={siteUrl(href)} aria-current={(pathname === href || (href === '/' && pathname === '/about')) ? 'page' : undefined}>{label}</a>
        </span>
      ))}
    </nav>
  );
}
