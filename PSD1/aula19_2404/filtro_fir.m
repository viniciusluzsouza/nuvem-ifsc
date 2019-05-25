clear all;
close all;
clc;

n = 100;
M = 40;
k = 1:M;


wp = 0.4*pi; ws = 0.6*pi; % spec
As = 50; Ap = 1; % spec
wc = sqrt(wp*ws); % media geometrica
% wc = 0.1*pi;
Dw = ws - wp;
M1 = ceil(3.32*pi/(Dw));
k = 1:M;

wp1 = 0.4395*pi; ws1 = 0.5839*pi;
Dw1 = ws1-wp1;

M2 = M1*Dw1/Dw;
M = M2;

type = 'LP'; db = 1;
switch type
    case 'LP'
        bi = sin(wc*k)./(pi*k);
        b0 = wc/pi;
        b = [flip(bi) b0 bi];

    case 'HP'
        bi = -sin(wc*k)./(pi*k);
        b0 = 1-wc/pi;
        b = [flip(bi) b0 bi];
end
m = -M:M;
mk= 0.04; %0.04 -> hamming
% mk= 0.0; %0.04 -> hann
wk = (0.5+mk)+(0.5+mk)*cos(2*pi*m/(2*M+1));
b = b.*wk;
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
ylim([-80 5])
Amim = 80
% plot([0 wp wp]/pi, -[Ap Ap Amin], 'r');

subplot(323)
plot(w/pi, unwrap(angle(h))/pi); grid on;
subplot(325)
grpdelay(b, 1)
