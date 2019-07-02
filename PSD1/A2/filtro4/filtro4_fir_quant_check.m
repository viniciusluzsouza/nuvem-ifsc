% clear Num h w

figure(3)
[h, w] = freqz(Num, 1, linspace(0,pi,100000));
% plot(w/pi, abs(h)); grid on;
plot(w*fa/2/pi,20*log10(abs(h))); grid on;
title('a) Resposta em Frequencia')
xlim([1100 1500]); ylim([-80 5]);
hold on;
Amin = 80;
plot([0, ws1, ws1, ws2, ws2, 1]*fa/2, [0, 0, -As, -As, 0,0], '-m')
plot([0, wp1, wp1, wp2, wp2, 1]*fa/2, [-Ap, -Ap, -120, -120, -Ap, -Ap], '-r')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');