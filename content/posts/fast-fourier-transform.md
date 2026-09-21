---
title: A self-contained introduction to the Fast Fourier Transform
date: "2026-09-05"
tags: [numerics, programming]
description: "A rigorous mathematical introduction to the FFT"
toc: true
---

## Introduction

The aim of this article is to give a self-contained and rigorous introduction to the *Discrete Fourier Transform (DFT)* and the *Fast Fourier Transform (FFT)*. I will not discuss any of the numerous applications here, though you are welcome to take a look at my implementation of a Fourier epicycle drawer [here](https://www.youtube.com/watch?v=tCs6ev1BQu0).

As motivation, we consider a linear interpolation problem. That is, let $f : U \to \mathbb{R}$ be a continuous function on an open set $U$ with $N$ points $(x_i, f_i)$ for $i = 0, \dots, N - 1$, where

$$
0 \leqslant x_0 < x_1 < \cdots < x_{N-1} < 2 \pi,
$$

and $f_i = f(x_i)$. Additionally, we will assume that $f$ is $2 \pi$-periodic.

It is then natural to attempt to tackle this problem by considering linear combinations of elementary trigonometric functions like sine and cosine. Concretely, let $M := \lfloor (N-1)/2 \rfloor$ and consider functions $\Psi$ of the form

$$
\Psi(x) := \frac{A_0}{2} + \sum_{k=1}^M (A_k \cos(k x) + B_k \sin(k x)) + \frac{A_{M+1}}{2} \cos\bigl((M+1)x\bigr).
$$

Here, we omit the final cosine term when $N = 2M+1$ is odd and include it when $N = 2M+2$ is even.

## The Discrete Fourier Transform

At this point, it would be nice to transform this interpolation problem into a form that we are more familiar with. To achieve this, let's also assume that $x_i = \frac{2 i \pi}{N}$ for $i = 0, \dots, N-1$. Using the complex definitions of sine and cosine, we can rewrite

$$
\begin{aligned}
\Psi(x) &= \frac{A_0}{2}
+ \sum_{k=1}^M \left[
\frac{A_k - \mathrm{i} B_k}{2} \mathrm{e}^{\mathrm{i} k x}
+ \frac{A_k + \mathrm{i} B_k}{2} \mathrm{e}^{-\mathrm{i} k x}
\right] + R_N(x), \\
R_N(x) &=
\begin{cases}
0, & N = 2M+1, \\
\displaystyle \frac{A_{M+1}}{4}
\left[\mathrm{e}^{\mathrm{i}(M+1)x} + \mathrm{e}^{-\mathrm{i}(M+1)x}\right],
& N = 2M+2.
\end{cases}
\end{aligned}
$$

To get rid of the negative powers, we can replace $\mathrm{e}^{- \mathrm{i} k x}$ by $\mathrm{e}^{\mathrm{i} (N-k) x}$. Note that this replacement is not valid for arbitrary $x$, but *is* valid at the equidistant interpolation points we chose. For even $N$, the two exponentials in $R_N$ agree at these points because $M+1 = N/2$, so $R_N(x_i) = (A_{M+1}/2)\mathrm{e}^{\mathrm{i}(N/2)x_i}$. Thus, instead of solving the interpolation problem for $\Psi$, we can seek

$$
p(x) := \sum_{k=0}^{N-1} c_k \mathrm{e}^{\mathrm{i} k x}
$$

satisfying the interpolation conditions $p(x_i) = f_i$ for $i = 0, \dots, N-1$ and suitable coefficients $c_i$.

Using the substitution $z := \mathrm{e}^{ \mathrm{i} x}$ and $\omega_k := \mathrm{e}^{\mathrm{i} x_k}$, we find that the complex polynomial $P(z) := \sum_{i=0}^{N-1} c_i z^i$ satisfies $P(\omega_k) = f_k$ for $k = 0, \dots, N-1$. This now looks a lot more familiar, and we can deduce immediately from the fact that interpolation at $N$ distinct nodes has a unique solution among polynomials of degree at most $N-1$ that $p$ is uniquely determined.

Now, how do we compute the coefficients of $p$? Recalling some elementary properties of complex roots of unity, we first deduce that the vectors $v_j := (\omega_0^j, \omega_1^j, \dots, \omega_{N-1}^j)^{\mathsf{T}}$, for $j = 0, \dots, N-1$, form an orthogonal (not orthonormal!) basis of $\mathbb{C}^N$ under the standard Hermitian inner product. With this fact, we obtain that $p$ solves the interpolation problem if and only if

$$
c_j = \frac{1}{N} \sum_{k=0}^{N-1} f_k \omega_k^{-j} = \frac{1}{N} \sum_{k=0}^{N-1} f_k \mathrm{e}^{- \frac{2 \pi \mathrm{i} j k}{N} }.
$$

Indeed, let $j \in \{ 0, \dots, N-1 \}$ be arbitrary. Then by our previous observations, we can write the condition $p(x_k) = f_k, k = 0, \dots, N-1$ as a system of equations

$$
f_k = \sum_{m=0}^{N-1} c_m \omega_k^m, \quad k = 0, \dots, N - 1.
$$

If we now multiply both sides by $\omega_k^{-j}$ and sum over $k = 0, \dots, N-1$, we get

$$
\begin{aligned}
\sum_{k=0}^{N-1} f_k \omega_k^{-j}
&= \sum_{k=0}^{N-1} \left( \sum_{m=0}^{N-1} c_m \omega_k^m \right) \omega_k^{-j} \\
&= \sum_{m=0}^{N-1} c_m \left( \sum_{k=0}^{N-1} \omega_k^m \omega_k^{-j} \right).
\end{aligned}
$$

By the orthogonality of these vectors, $\sum_{k=0}^{N-1} f_k \omega_k^{-j} = c_j N$, which yields the desired equality.

The map $\mathcal{F} : \mathbb{C}^N \to \mathbb{C}^N$ with $(f_k) \mapsto (c_j)$ is called the *Discrete Fourier Transform*, commonly abbreviated as DFT. Its inverse $(c_j) \mapsto (f_k)$ is called *Fourier synthesis*. Clearly, $f = \mathcal{F}^{-1}(c_j) = N \overline{ \mathcal{F} (\overline{c_j})}$.

## The Fast Fourier Transform

In the previous section, we've seen that to solve our interpolation problem, we need to calculate sums of the form

$$
c_j = \frac{1}{N} \sum_{k=0}^{N-1} f_k \mathrm{e}^{- \frac{2 \pi \mathrm{i} j k}{N} }.
$$

One could naively calculate these sums directly in roughly $\mathcal{O}(N^2)$ operations, which is suboptimal for large $N$. This prompted researchers in the 60s to come up with a family of algorithms now collectively known as the *Fast Fourier Transform*. In this article, we will focus on the algorithm named after J. W. Cooley and John Tukey, which is arguably the most common FFT algorithm. Cooley and Tukey independently rediscovered and popularized the algorithm about 160 years after Gauß, who invented the algorithm.

### Decimation in Frequency

We will focus on the case $N = 2^n$ in the following treatment of the FFT, but it is straightforward to generalize to general $N$ using the same ideas. The case $N=1$ is immediate: $c_0=f_0$. For $N \geqslant 2$, write $M := N/2 = 2^{n-1}$ (so $M$ now denotes half the transform length), and let $\rho_m := \mathrm{e}^{- 2 \pi \mathrm{i} / 2^m}$. We distinguish between the even- and odd-indexed coefficients $c_j$. In particular, the following relations hold:

$$
N c_{2 \ell} = \sum_{k=0}^{N-1} f_k \rho_n^{2 \ell k} = \sum_{k=0}^{M-1} (f_k + f_{k+M}) \rho_{n-1}^{\ell k},
$$

and

$$
N c_{2 \ell + 1} = \sum_{k=0}^{N-1} f_k \rho_n^{(2 \ell + 1) k} = \sum_{k=0}^{M-1} [(f_k - f_{k+M}) \rho_n^k] \rho_{n-1}^{\ell k}
$$

for $\ell = 0, \dots, M-1$. These are obtained through direct computation, and I will carry them out in detail here, as I believe these calculations really capture the central idea of the algorithm.

So, let $j \in \{ 0, \dots, N-1 \}$. By definition,

$$
N c_j = \sum_{k=0}^{M-1} f_k \rho_n^{j k} + \sum_{k=M}^{2 M - 1} f_k \rho_n^{j k},
$$

and an index shift yields

$$
\sum_{k=M}^{2 M - 1} f_k \rho_n^{j k} = \sum_{k=0}^{M-1} f_{k+M} \rho_n^{j k} \rho_n^{j M},
$$

where $\rho_n^{j M} = \mathrm{e}^{- \frac{2 \pi \mathrm{i}}{N} \cdot j \cdot \frac{N}{2}} = \mathrm{e}^{- \pi \mathrm{i} j} = (-1)^j$. Therefore,

$$
N c_j = \sum_{k=0}^{M-1} [f_k \rho_n^{j k} + f_{k + M} \rho_n^{j k} (-1)^j ] = \sum_{k=0}^{M-1} (f_k + (-1)^j f_{k+M}) \rho_n^{j k}.
$$

Now, if $j = 2 \ell$ is even, $\rho_n^{2 \ell k} = \mathrm{e}^{- \frac{2 \pi \mathrm{i}}{2^{n-1}} \cdot \ell k} = \rho_{n-1}^{\ell k}$ and substituting this,

$$
N c_j = \sum_{k=0}^{M-1} (f_k + f_{k+M}) \rho_{n-1}^{\ell k}.
$$

Similarly, if $j = 2 \ell + 1$ is odd, $\rho_n^{(2 \ell + 1) k} = \rho_n^k \rho_n^{2 \ell k} = \rho_n^k \rho_{n-1}^{\ell k}$ and thus

$$
N c_j = \sum_{k=0}^{M-1} [(f_k - f_{k+M}) \rho_n^k ] \rho_{n-1}^{\ell k},
$$

as desired.

If we recursively apply this process of splitting our original sums into partial sums, we obtain the relation

$$
N c_{j 2^{n-m} + r} = \sum_{k=0}^{2^m-1} f_{r,k}^{(m)} \rho_m^{j k}
$$

for $j = 0, \dots, 2^m - 1, r = 0, \dots, 2^{n-m} - 1$ and $m = 0, \dots, n$.
To untangle this sea of indices, one can think of $m$ as a counter for how many times we split the original sum $N c_j = \sum_{k=0}^{N-1} f_k \rho_n^{j k}$ (namely, $m = n$ at first, then $m = n-1$ after the first step, and so on) and $r$ indicates our position within the array of partial sums. At any stage, there are exactly $2^{n-m}$ such sums.

Some names: We call this concept of splitting partial sums into new DFTs *decimation in frequency* and $\rho_m^k$ is called a *twiddle factor*. With this in place, we can now rigorously define an algorithm to calculate the DFT.

Namely, define the sequence $f_{r,k}^{(m)}$ by setting

$$
f_{0,k}^{(n)} = f_k, \qquad k = 0, \dots, N-1,
$$

$$
f_{r,k}^{(m-1)} = f_{r,k}^{(m)} + f_{r,k + 2^{m-1}}^{(m)},
$$

$$
f_{r + 2^{n-m}, k}^{(m-1)} = ( f_{r,k}^{(m)} - f_{r,k + 2^{m-1}}^{(m)} ) \rho_m^k
$$

for $k = 0, \dots, 2^{m-1}-1$, $r = 0, \dots, 2^{n-m}-1$, and $m = n, n-1, \dots, 1$, in that order. Then

$$
N c_{j 2^{n-m} + r} = \sum_{k = 0}^{2^m - 1} f_{r,k}^{(m)} \rho_m^{j k},
$$

for $j = 0, \dots, 2^m - 1, r = 0, \dots, 2^{n-m} - 1$ and $m = 0, \dots, n$. After $n$ steps, namely $m = 0$, we then obtain

$$
c_i = \frac{1}{N} f_{i,0}^{(0)}
$$

for $i = 0, \dots, N-1$.

Every step requires $N$ additions and $N/2$ multiplications, so totalling over $n$ steps, we get $\mathcal{O}(N n) = \mathcal{O}(N \log_2 N)$ operations in total, which is a substantial improvement over the $\mathcal{O}(N^2)$ operations we set out with.

### Storage Algorithm

It is apparent from the recursive definitions given above that to calculate $f_{\ast, \ast}^{(m-1)}$, we require the previous values $f_{\ast, \ast}^{(m)}$, which might lead one to believe that, when implementing the algorithm programmatically, we require *two* arrays to compute the DFT. But this is not so: A single array $\tilde{f}$ is sufficient to save the $2^n$ values $f_{r, k}^{(m)}$ for $m = 1, \dots, n, r = 0, \dots, 2^{n-m} - 1$, and $k = 0, \dots, 2^m - 1$ if we can overwrite the values $f_{r,k}^{(m)}$ and $f^{(m)}_{r, k + 2^{m-1}}$ with their new counterparts $f_{r,k}^{(m-1)}$ and $f^{(m-1)}_{r + 2^{n-m}, k}$. Clearly, this can be achieved by saving $f_{r,k}^{(m)}$ at $\tilde{f}_{\tau(m, r, k)}$, where $\tau$ is a map satisfying

$$
\tau(m-1, r, k) = \tau(m, r, k),
$$

$$
\tau(m - 1, r+ 2^{n-m}, k) = \tau(m, r, k + 2^{m-1})
$$

for the corresponding values $m = 1, \dots, n$, $r = 0, \dots, 2^{n-m}-1$, and $k = 0, \dots, 2^{m-1}-1$.

To find such a map $\tau$, let $z = \sum_{i=0}^{n-1} a_i 2^i$ with $a_i \in \{ 0, 1 \}$ be a binary number with at most $n$ bits and define the *bit reversal map* $u : \{0, \dots, 2^n-1\} \to \{0, \dots, 2^n-1\}$ by setting

$$
u(z) := \sum_{i=0}^{n-1} a_i 2^{n-1-i}.
$$

It turns out that if we then set $\tau(m, r, k) := k + u(r)$, this map satisfies our required conditions. In practice, one 'discovers' this definition by solving the recursion prescribed above, but for our purposes it suffices to simply prove that this is indeed the case. For instance, it follows immediately that $\tau(m - 1, r, k) = k + u(r) = \tau(m, r, k)$. Moreover,

$$
\tau(m - 1, r + 2^{n-m}, k) = k + u(r + 2^{n-m}),
$$

and

$$
\tau(m, r, k + 2^{m-1}) = (k + 2^{m-1}) + u(r).
$$

Since $r \in \{ 0, \dots, 2^{n-m} - 1 \}$, we can write $r = \sum_{i=0}^{n-m-1} a_i 2^i$ for $a_i \in \{ 0, 1 \}$. As bit $n-m$ is certainly zero, it follows that the binary representation of $r + 2^{n-m}$ is exactly

$$
r + 2^{n-m} = 1 \cdot 2^{n-m} + \sum_{i=0}^{n-m-1} a_i 2^i.
$$

Therefore,

$$
\begin{aligned}
u(r + 2^{n-m})
&= 1 \cdot 2^{n-1-(n-m)} + \sum_{i=0}^{n-m-1} a_i 2^{n-1-i} \\
&= 2^{m-1} + \sum_{i=0}^{n-m-1} a_i 2^{n-1-i} \\
&= 2^{m-1} + u(r).
\end{aligned}
$$

In particular, this means that $k + u(r + 2^{n-m}) = (k + 2^{m-1}) + u(r)$, which is precisely what we wanted to show.

## Implementing the algorithm

We now have all the ingredients to actually write up the algorithm:

```python
import cmath
import math

def bit_reverse(j: int, n: int) -> int:
    result = 0

    for _ in range(n):
        result = (result << 1) | (j & 1)
        j >>= 1

    return result

def sande_tukey_fft(f):
    N = len(f)
    n = N.bit_length() - 1

    f_tilde = [complex(x) for x in f]

    # m = n, n-1, ..., 1
    for m in range(n, 0, -1):

        block_size = 1 << m          # 2^m
        half = 1 << (m - 1)         # 2^(m-1)

        # rho_m = exp(-2*pi*i / 2^m)
        rho_m = cmath.exp(-2j * math.pi / block_size)

        # r = 0, 2^m, 2*2^m, ...
        for r in range(0, N, block_size):

            # k = 0, ..., 2^(m-1)-1
            for k in range(half):

                e = rho_m ** k

                x = f_tilde[r + k]
                y = f_tilde[r + k + half]

                # f^(m-1)_{r,k}
                f_tilde[r + k] = x + y

                # f^(m-1)_{r + 2^(n-m), k}
                f_tilde[r + k + half] = e * (x - y)

    # The values are in bit-reversed order after computing the DFT
    c = [0j] * N

    for j in range(N):
        c[j] = f_tilde[bit_reverse(j, n)] / N

    return c
```
