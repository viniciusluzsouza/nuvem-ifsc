clear all;
close all;
clc

% b = [1 1];
% a = [1 1 5];
b = 1;
% a1 = [1 0.3986 1]; a2 = [1 1.111 1]; a3 = [1 1.6630 1]; a4 = [1 1.9622 1];
a1 = [1 1]; a2 = [1 0.445 1]; a3 = [1 1.2470 1]; a4 = [1 1.8019 1];
a = conv(a4, conv(a3, conv(a2, a1)))

n = 7;
k = 1:n;
pk = exp((1j*(2*k+n-1)/(2*n)*pi)); % polos
a = poly(pk);

% [z1,p1,k]=tf2zp(b,a)
% z2 = roots(b);
% p2 = roots(a);
figure(1)
zplane(b,a);
%%
figure(2)
subplot(211)
[h, w] = freqs(b,a, logspace(-2, 3, 10000));
[h0, w0] = freqs(b,a, [0, 1, 2, 10, 100]);  % exibir em db para valores do vetor
20*log10(abs(h0))
% [h, w] = freqs(b,a, linspace(0, 10, 10000));
semilogx(w, 20*log10(abs(h)))
grid on
hold on
semilogx(w0, 20*log10(abs(h0)), '+r')

% plot(w, 20*log10(abs(h)))
subplot(212)
semilogx(w, unwrap(angle(h))/pi)
% plot(w, unwrap(angle(h))/pi)
grid on
%%
syms s  w
H(s) = (s+1)/(s^2 + s + 5);
pretty(H(1j*w))
latex(H(1j*w))
%%
ws = logspace(-2, 1, 1000);
h = H(1j*ws);
figure(3)
subplot(211)
semilogx(ws/2/pi,abs(h)); grid on;
subplot(212)
semilogx(ws/2/pi,angle(h)/pi*180); grid on;