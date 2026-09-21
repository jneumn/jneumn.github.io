const element = (tagName, properties, children) => ({ type: 'element', tagName, properties, children });
const text = value => ({ type: 'text', value });
const headingText = node => node.type === 'text' ? node.value : (node.children ?? []).map(headingText).join('');

// Build navigation before MathJax replaces mathematical heading text with SVGs.
export function headingNavigation() {
  return (tree, file) => {
    if (!file.data.toc) return;
    const headings = [];
    const ids = new Set();
    function visit(node) {
      if (node.type === 'element' && /^h[1-6]$/.test(node.tagName)) {
        const label = headingText(node);
        const base = label.toLowerCase().trim().replace(/[^\p{L}\p{N}\s-]/gu, '').replace(/\s+/g, '-') || 'section';
        let id = base;
        for (let suffix = 1; ids.has(id); suffix++) id = `${base}-${suffix}`;
        ids.add(id);
        node.properties.id = id;
        headings.push({ depth: Number(node.tagName[1]), label, id });
      }
      for (const child of node.children ?? []) visit(child);
    }
    visit(tree);
    if (!headings.length) return;

    let cursor = 0;
    function list(depth) {
      const items = [];
      while (cursor < headings.length && headings[cursor].depth >= depth) {
        const heading = headings[cursor++];
        const children = [element('a', { href: `#${heading.id}` }, [text(heading.label)])];
        if (cursor < headings.length && headings[cursor].depth > heading.depth) {
          children.push(list(headings[cursor].depth));
        }
        items.push(element('li', {}, children));
      }
      return element('ol', {}, items);
    }
    const lists = [];
    while (cursor < headings.length) lists.push(list(headings[cursor].depth));
    tree.children.unshift(element('nav', { className: ['post-toc'], ariaLabel: 'Table of contents' }, [
      element('strong', {}, [text('Contents')]), ...lists,
    ]));
  };
}
