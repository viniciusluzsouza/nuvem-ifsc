close all;
clear all;
clc;

%% Projeto do filtro Chebyshev

As = 40; Rs = As;
Ap = 3; Rp = Ap;
wp = 1000;
ws = 2000;
Wp = 1;
Ws = ws/wp;

[n1,Wn] = buttord(Wp,Ws,Rp,Rs,'s')
% [b,a] = butter(n,Wn,'s')
[b1,a1] = butter(n1,1,'s')

[h, w] = freqs(b1, a1, logspace(-2, 2, 10000));
semilogx(w, 20*log10(abs(h)))
grid on;
hold on;

[n2,Wn] = cheb1ord(Wp,Ws,Rp,Rs,'s')
[b2,a2] = cheby1(n2,Rp,Wp,'s')

[h, w] = freqs(b2, a2, logspace(-2, 2, 10000));
semilogx(w, 20*log10(abs(h)))
grid on;
hold on;

legend(['Butterworth'], ['Chebyshev1'])
