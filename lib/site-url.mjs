// Set by the Pages workflow; empty for local previews and root-domain sites.
export function siteUrl(url) {
  if (!url.startsWith('/') || url.startsWith('//')) return url;
  const base = (process.env.NEXT_PUBLIC_BASE_PATH || '').replace(/\/$/, '');
  const match = url.match(/^([^?#]*)(.*)$/);
  const pathname = match[1];
  const suffix = match[2];
  const pagePath = !pathname.endsWith('/') && !pathname.split('/').pop().includes('.') ? `${pathname}/` : pathname;
  return `${base}${pagePath}${suffix}`;
}
