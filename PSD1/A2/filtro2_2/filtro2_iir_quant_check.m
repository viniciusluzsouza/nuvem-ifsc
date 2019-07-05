% clear Num Den SOS G hzq wzq

%%
[Num, Den] = sos2tf(SOS, G);

figure(1)
escala = fa/2;
% suptitle('Transforma????o anal??gico -> digital')
subplot(2,2,[1 2])
[hzq, wzq] = freqz(Num, Den, linspace(0, pi, 100000));
plot(wzq/pi*fa/2, 20*log10(abs(hzq)));
legend('Referencia', 'Quantizado');
grid on
hold on

subplot(2,2,3)
plot(wzq/pi*fa/2, 20*log10(abs(hzq)));
legend('Referencia', 'Quantizado');
grid on; hold on;

subplot(2,2,4)
plot(wzq/pi*fa/2, 20*log10(abs(hzq)));
legend('Referencia', 'Quantizado');
grid on; hold on;


%%
figure(2)
% suptitle(['LP IIR ' num2str(fp_espec) '-' num2str(fs_espec) ' Ordem: ' num2str(n)])

subplot(321)
escala = fa/2;
plot(wzq/pi*escala, 20*log10(abs(hzq)));
xlim([0 5000]); ylim([-40 5]);
title('a) Resposta em Frequencia para H(z)')
grid on
hold on
plot([0,fs_espec,fs_espec,10000],[-As,-As,0,0], 'r')
plot([fp_espec,fp_espec,10000],[-60,-Ap,-Ap], 'r')
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
delta = [1, zeros(1, 38)];
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
title('d) Atraso de grupo para H(z)');
legend('Quantizado');
