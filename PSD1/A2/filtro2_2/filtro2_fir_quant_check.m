% clear Num h w

figure(3)
[h, w] = freqz(Num, 1, linspace(0,pi,100000));
% plot(w/pi, abs(h)); grid on;
plot(w/pi, 20*log10(abs(h))); grid on;
title('a) Resposta em frequencia')
ylim([-40 5])
hold on;
plot([pi,wp,wp]/pi,[-Ap,-Ap,-80], '-red')
plot([0,ws/pi,ws/pi,1],[-As,-As,0,0], '-red')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');