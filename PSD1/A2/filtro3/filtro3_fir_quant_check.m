figure(3)
[h, w] = freqz(Num, 1, linspace(0,pi,100000));
% plot(w/pi, abs(h)); grid on;
plot(w*fa/2/pi,20*log10(abs(h))); grid on;
title('a) Resposta em Frequencia')
xlim([0 fa/2]);ylim([-60 -5]);
hold on;
Amin = 80;
plot([wp1, wp1, wp2, wp2]*fa/2, [-Amin, Ap-2, Ap-2, -Amin], '-r')
plot([0, ws1, ws1, ws2, ws2, 1]*fa/2, [-As, -As, Ap, Ap, -As,-As], '-m')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');