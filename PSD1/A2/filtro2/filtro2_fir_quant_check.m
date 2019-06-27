[h, w] = freqz(Num, 1, linspace(0,pi,10000));
% plot(w/pi, abs(h)); grid on;
plot(w/pi*escala, 20*log10(abs(h))); grid on;
hold on;
title('a) Resposta em Frequencia')
ylim([-40 5])
Amin = 80;
plot([0,fs,fs,fa/2],[-As,-As,0,0], 'r')
plot([fa/2,fp,fp,],[-Ap,-Ap,-80], 'r')
xlim([0 fa/2])
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
