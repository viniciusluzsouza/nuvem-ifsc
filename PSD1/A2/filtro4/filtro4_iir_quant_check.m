% clear SOS G Num Den hz wz

[Num, Den] = sos2tf(SOS, G);

figure(5)
[hz, wz] = freqz(Num, Den, linspace(0, pi, 1000000));
plot(wz/pi*fa/2, 20*log10(abs(hz)));
xlim([1100 1500]);ylim([-80 5]);
title('a) H(z)')
grid on
hold on
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec,2000],[0,0,-As,-As,0,0], 'r')
plot([0,fp1_espec,fp1_espec,fp2_espec, fp2_espec,2000],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');