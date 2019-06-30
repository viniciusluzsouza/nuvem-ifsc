[Num, Den] = sos2tf(SOS, G);

figure(5)
%suptitle('Transforma????o anal??gico -> digital')
[hz, wz] = freqz(Num, Den, linspace(0, pi, 100000));
plot(wz/pi*fa/2, 20*log10(abs(hz)));
ylim([-60 -5])
title('a) H(z)')
grid on
hold on
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec, 5000],[-As,-As,GdB,GdB,-As,-As], 'r')
plot([fp1_espec,fp1_espec,fp2_espec, fp2_espec],[-60,-Ap,-Ap,-60], 'g')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');