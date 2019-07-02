% clear Num Den SOS G

[Num, Den] = sos2tf(SOS, G);

figure(5)
% suptitle(['LP IIR ' num2str(fp_espec) '-' num2str(fs_espec) ' Ordem: ' num2str(n)])
escala = fa/2;
[hz, wz] = freqz(Num, Den, linspace(0, pi, 10000));
plot(wz/pi*escala, 20*log10(abs(hz)));
xlim([0 fa/2]);ylim([-60 10])
title('a) Resposta em Frequencia para H(z)')
grid on
hold on
plot([0,fs_espec,fs_espec,(fa/2)+1000],[0,0,-As,-As], 'r')
plot([0,fp_espec,fp_espec,],[-Ap,-Ap,-80], 'r')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');