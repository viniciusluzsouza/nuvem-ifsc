syms p
H1(p) = (p^2 + 1)/(3*p^2 + 4*p + 6)
H2(p) = poly2sym([1 0 1], 'p')/poly2sym([3 4 6], 'p')
latex(H1(p))

wp = 1000
syms s
Hs1(s) = subs(H1,s/wp);
pretty(Hs1(s))

%%
Hs1c(s) = collect(Hs1(s));
pretty(Hs1c(s))
[N,D] = numden(Hs1c(s))

b = sym2poly(N)
a = sym2poly(D)

zplane(b, a)
freqs(b, a)