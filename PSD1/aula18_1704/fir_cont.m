clear all;
close all;
clc;

n = 100;
k = 1:n;
wc = 0.5*pi;

type = 'HP';
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

subplot(3,2,[4 6])
zplane(b, 1);
axis([-2 2 -2 2])
[h, w] = freqz(b, 1, 'whole');
subplot(322)
stem(b), grid on;
xlim([0 2*n]);
subplot(321)
[h, w] = freqz(b, 1, linspace(0,pi,10000));
plot(w/pi, abs(h)); grid on;
% plot(w/pi, 20*log10(abs(h))); grid on;
subplot(323)
plot(w/pi, unwrap(angle(h))/pi); grid on;
subplot(325)
grpdelay(b, 1)
