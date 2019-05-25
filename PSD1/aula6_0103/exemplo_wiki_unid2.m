clear all;
close all;
clc

% b = [1 1];
% a = [1 1 5];
b = 1;
a1 = [1 0.3986 1]; a2 = [1 1.111 1]; a3 = [1 1.6630 1]; a4 = [1 1.9622 1];
a = conv(a4, conv(a3, conv(a2, a1)))
[z1,p1,k]=tf2zp(b,a)
z2 = roots(b);
p2 = roots(a);
figure(1)
zplane(b,a);
%%
figure(2)
[h, w] = freqs(b,a, logspace(-2, 3, 10000));
semilogx(w, 20*log10(abs(h)))
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