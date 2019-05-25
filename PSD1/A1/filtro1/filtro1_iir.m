% Projeto filtro 1
% LP - (fa = 10000 Hz, f1 = 2800 Hz; f2 = 3200 Hz, Ap = 1 dB, As = 40 dB, GdB = 0 dB)

close all;
clear all;
clc;

% Especificacoes
fa = 10000; f1 = 2800; f2 = 3200;
Ap = 1; As = 40; GdB = 0;

wp = 2*pi*f1; ws = 2*pi*f2;
Wp = 1; Ws = ws/wp;

%% IIR Eliptico
[n, Wn] = ellipord(Wp, Ws, Ap, As,'s');
[b,a] = ellip(n,Ap,As, Wn, 's');

%% Primeiro plot
figure(1)
subplot(221)
[h, w] = freqs(b, a, logspace(-2, 1, 10000));
semilogx(w, 20*log10(abs(h)))
grid on; hold on;
semilogx([10^-2 Wp Wp], [-Ap -Ap -500], '-r')
semilogx([10^-2 Ws Ws 10^2], [Ap Ap -As -As], '-r')
xlim([0.5 2]); ylim([-60 10]);
hold off;

subplot(223)
semilogx(w, unwrap(angle(h)))
grid on;

subplot(2,2,[2,4])
th = 0:pi/50:2*pi; plot(cos(th), sin(th), '--k')
hold on;
plot(real(roots(b)), imag(roots(b)), 'o', real(roots(a)), imag(roots(a)), 'x');
grid on; hold off;
max = 3; axis([-1.1 1.1 -1.1 1.1]*max); axis square;

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

bs = sym2poly(N);
as = sym2poly(D);
an = as(1);
bsn = bs/an;
asn = as/an;
Hsn(s) = poly2sym(bsn, s)/poly2sym(asn, s);
pretty(vpa(Hsn(s), 5))

%% Resposta em frequencia
figure(2)
[hf, wf] = freqs(bsn, asn, logspace(1, 6, 1000));
semilogx(wf, 20*log10(abs(hf)))
grid on
hold on

%%
figure(3)
subplot(3,2,[4 6])
zplane(b, 1);
axis([-2 2 -2 2])
[h, w] = freqz(b, 1, 'whole');
subplot(322)
stem(b), grid on;
subplot(321)
[h, w] = freqz(b, 1, linspace(0,pi,10000));
% plot(w/pi, abs(h)); grid on;
plot(w/pi, 20*log10(abs(h))); grid on;
Amin = 80
% plot([0 wp wp]/pi, -[Ap Ap Amin], 'r');

subplot(323)
plot(w/pi, unwrap(angle(h))/pi); grid on;
subplot(325)
grpdelay(b, 1)