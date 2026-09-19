---
title: The sum of the first n odd numbers
date: "2026-09-05"
tags: [algebra, exercises]
description: A short proof by induction. An example post to get started.
---
## Exercise

Show that for every positive integer $n$,

$$
1 + 3 + 5 + \cdots + (2n-1) = n^2.
$$

Try to find both an algebraic proof and a geometric explanation before reading on.

## Proof by induction

For $n=1$, the claim is $1=1^2$, which is true.

Suppose the claim holds for some $n\geq 1$. Adding the next odd number gives

$$
\begin{aligned}
\sum_{k=1}^{n+1}(2k-1)
&= n^2 + (2n+1) \\
&= (n+1)^2.
\end{aligned}
$$

This proves the claim by induction.

## A geometric explanation

Start with one square. To enlarge an $n\times n$ square to an $(n+1)\times(n+1)$ square, add a row of $n$ squares, a column of $n$ squares, and one corner square: $2n+1$ new squares altogether.

Each successive odd number supplies exactly the next layer.

## Further question

What is the sum of the odd numbers from $2a-1$ to $2b-1$, where $1\leq a\leq b$?

---

*This is an example post. Edit or remove its Markdown file to make this blog your own.*
