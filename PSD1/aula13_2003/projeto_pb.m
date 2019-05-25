clear all;
close all;
clc;

%% Projeto filtro - Especificacoes

fp = 941; wp = 2*pi*fp;
fs = 1209; ws = 2*pi*fs;
Ap = 1;
As = 20;
Wp = 1;
Ws = ws/wp;

%% Projeto
[n, Wn] = buttord(Wp,Ws,Ap,As,'s');
[b, a] = butter(n,Wn,'s');

[h, w] = freqs(b, a, logspace(-2, 2, 10000));
semilogx(w, 20*log10(abs(h)))
grid on;
hold on;
semilogx([10^-2 Wp Wp], [-Ap -Ap -500], '-r')
semilogx([10^-2 Ws Ws 10^2], [Ap Ap -As -As], '-r')
xlim([0.8 1.5])
ylim([-25 5])

%% Transformacao de frequencia
% LP para LP
ap = a; bp = b;
syms p;
Np(p) = poly2sym(bp, p);
Dp(p) = poly2sym(ap, p);
Hp(p) = Np(p) / Dp(p);
pretty(vpa(collect(Hp(p)), 5))

%% Normalizando de acordo com p^n
syms s;
Hs(s) = collect(subs(Hp(p), s/wp));
[N, D] = numden(Hs(s));
pretty(vpa(Hs(s), 3))

% Normalizando de acordo com p^n
bs = sym2poly(N);
as = sym2poly(D);
an = as(1);
bsn = bs/an;
asn = as/an;
Hsn(s) = poly2sym(bsn, s)/poly2sym(asn, s);
pretty(vpa(Hsn(s), 5))

%% Resposta em frequencia
figure(2)
[h, w] = freqs(bsn, asn, logspace(1, 6, 1000));
semilogx(w, 20*log10(abs(h)))
grid on
hold on
