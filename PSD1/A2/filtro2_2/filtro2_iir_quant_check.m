% clear Num Den SOS G

[Num, Den] = sos2tf(SOS, G);

figure(5)
[hz, wz] = freqz(Num, Den, linspace(0, pi, 100000));
plot(wz/pi*fa/2, 20*log10(abs(hz)));
xlim([1500 5000]); ylim([-40 5]);
title('a) H(z)')
grid on
hold on
plot([0,fs_espec,fs_espec,10000],[-As,-As,0,0], 'r')
plot([fp_espec,fp_espec,10000],[-60,-Ap,-Ap], 'r')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');