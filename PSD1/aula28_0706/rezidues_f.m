clear all;
close all;
clc

b = [0.16 -0.18];
a1 = [1 -0.2];
a2 = [1 0.1];
a3 = [1 0.4];
a4 = [1 1 0.5];

a12 = conv(a1,a2);
a23 = conv(a12,a3);
a34 = conv(a23,a4);
a = a34;

[r,p,k] = residuez(b,a);

b = [0 0 0 0.16 -0.18 0];

figure(1)
subplot(211)
freqz(b,a)
subplot(212)
zplane(b,a)
hold on
plot(p,'^r')
hold off

%% cascata

b1 = [0 1 0];
a1 = [1 1 0.5];
b2 = [0 1];
a2 = [1 0.4];
b3 = [0 0.16 -0.10];
a3 = [1 -0.1 -0.02];

%% paralelo

b1_p = [4.2 -1.117 0];
a1_p = [1 -0.1 -0.02];

b2_p = [5.2134 0];
a2_p = [1 0.4];

b3_p = [1.1314 -0.1494 0];
a3_p = [1 1 0.5];

[h1, w] = freqz(b1_p, a1_p);
[h2, w] = freqz(b2_p, a2_p);
[h3, w] = freqz(b3_p, a3_p);
h = h1+h2+h3;

figure(4)
plot(w/pi, 20*log10(abs(h)));