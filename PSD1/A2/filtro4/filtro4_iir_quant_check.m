% clear SOS G Num Den hz wz

[Num, Den] = sos2tf(SOS, G);

%%
figure(1)
subplot(3,2,[1 2])
[hzq, wzq] = freqz(Num, Den, linspace(0, pi, 1000000));
plot(wzq/pi*fa/2, 20*log10(abs(hzq)));
title('a) H(z)')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

subplot(3,2,3)
plot(wzq/pi*fa/2, 20*log10(abs(hzq)));
title('b) H(z) - Banda Passagem')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

subplot(3,2,4)
plot(wzq/pi*fa/2, 20*log10(abs(hzq)));
title('c) H(z) - Banda Passagem')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

subplot(3,2,5:6)
plot(wzq/pi*fa/2, 20*log10(abs(hzq)));
title('d) H(z) - Banda de Rejeicao')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

figure(2)
subplot(2,2,[2 4])
zplane(Num, Den); axis([-1.15 1.15 -1.15 1.15]);
title('b) Diagrama de polos (x) e zeros (o) - Quantizado')
xlabel('Real');
ylabel('Imaginario');

%%
figure(3)
% suptitle(['LP IIR ' num2str(fp_espec) '-' num2str(fs_espec) ' Ordem: ' num2str(n)])

subplot(321)
escala = fa/2;
plot(wzq/pi*escala, 20*log10(abs(hzq)));
xlim([1100 1500]);ylim([-80 5]);
title('a) Resposta em Frequencia para H(z)')
grid on
hold on
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec,2000],[0,0,-As,-As,0,0], 'r')
plot([0,fp1_espec,fp1_espec,fp2_espec, fp2_espec,2000],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Quantizado');

subplot(3,2,[4 6])
zplane(Num, Den);
title('e) Diagrama de polos (x) e zeros (o)')
xlabel('Real');
ylabel('Imaginario');
legend('Quantizado', 'Quantizado');

subplot(322)
delta = [1, zeros(1, 35)];
imp = filter(Num, Den, delta);
x_imp = [0:length(delta)-1]/fa*1000;
stem(x_imp, imp); grid on;
title('b) Resposta ao impulso')
xlabel('Amostras (ms)');
ylabel('Amplitude (adm)');
legend('Quantizado');

subplot(323)
plot(wzq/pi*escala, unwrap(angle(hzq))/pi); grid on;
title('c) Resposta de Fase para H(z)')
xlabel('Frequencia (Hz)');
ylabel('Fase (rad)');
legend('Quantizado');

subplot(325)
[del_y, del_x] = grpdelay(Num, Den);
plot(del_x/pi*fa/2, del_y/fa*1000);
xlabel('Frequencia (Hz)');
ylabel('Tempo (ms)');
title('d) Atraso de grupo para H(z)')
legend('Quantizado');