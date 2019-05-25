% a = [1 2 1]
digits(5)
a = [0.33 0.9342 0.2323 4.34345 5.34]
syms s;

Ds(s) = poly2sym(a, 's');
% pretty(Ds)
% pretty(vpa(Ds, 10))
pretty(vpa(Ds))

Ds(0)
% Ds([0 1 2 3])
% vpa(Ds([0 1 2 3]), 10)
vpa(Ds([0 1 2 3]))

as = sym2poly(Ds)