% clear SOS G Num Den hz wz

[Num, Den] = sos2tf(SOS, G);

%%
figure(1)
%suptitle('Transforma????o anal??gico -> digital')
subplot(3,2,[1 2])
[hzq, wzq] = freqz(Num, Den, linspace(0, pi, 100000));
plot(wzq/pi*fa/2, 20*log10(abs(hzq)));
title('a) H(z)')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

subplot(3,2,[3 4])
plot(wzq/pi*fa/2, 20*log10(abs(hzq)));
title('b) H(z) - Banda Passagem')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

subplot(3,2,5)
plot(wzq/pi*fa/2, 20*log10(abs(hzq)));
title('c) H(z) - Banda de Rejeicao')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

subplot(3,2,6)
plot(wzq/pi*fa/2, 20*log10(abs(hzq)));
title('d) H(z) - Banda de Rejeicao')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

%%
figure(2)   
% suptitle(['LP IIR ' num2str(fp_espec) '-' num2str(fs_espec) ' Ordem: ' num2str(n)])
escala = fa/2;
subplot(321)
plot(wzq/pi*escala, 20*log10(abs(hzq)));
ylim([-60 -5])
title('a) Resposta em Frequencia para H(z)')
grid on
hold on
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec, 5000],[-As,-As,GdB,GdB,-As,-As], 'r')
plot([fp1_espec,fp1_espec,fp2_espec, fp2_espec],[-60,-Ap,-Ap,-60], 'g')
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
delta = [1, zeros(1, 90)];
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