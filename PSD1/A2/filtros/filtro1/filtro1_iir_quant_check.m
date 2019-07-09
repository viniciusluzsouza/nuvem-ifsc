% clear Num Den SOS G hzq wzq

%%
% [Num, Den] = sos2tf(SOS, G);

figure(1)
escala = fa/2;
% suptitle('Transforma????o anal??gico -> digital')
subplot(2,2,1:2)
[hzq, wzq] = freqz(Num, Den, linspace(0, pi, 100000));
plot(wzq/pi*fa/2, 20*log10(abs(hzq)));
title('a) H(z)')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

subplot(2,2,3)
plot(wzq/pi*fa/2, 20*log10(abs(hzq)));
title('b) H(z) - Banda Passagem')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

subplot(2,2,4)
plot(wzq/pi*fa/2, 20*log10(abs(hzq)));
title('c) H(z) - Banda de Rejeicao')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

%%
figure(2)
subplot(2,2,[2 4])
zplane(Num, Den);
title('b) Diagrama de polos (x) e zeros (o) - Quantizado')
xlabel('Real');
ylabel('Imaginario');

%%
figure(3)
% suptitle(['LP IIR ' num2str(fp_espec) '-' num2str(fs_espec) ' Ordem: ' num2str(n)])
subplot(321)
plot(wzq/pi*escala, 20*log10(abs(hzq)));
xlim([0 fa/2]);ylim([-60 10])
title('a) Resposta em Frequencia para H(z)')
grid on
hold on
plot([0,fs_espec,fs_espec,(fa/2)+1000],[0,0,-As,-As], 'r')
plot([0,fp_espec,fp_espec,],[-Ap,-Ap,-80], 'r')
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
delta = [1, zeros(1, 61)];
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

% eixos = axes;
% texto = ['LP IIR ' num2str(fp_espec) '-' num2str(fs_espec) ' Ordem: ' num2str(n)];
% titulo = title(texto, 'FontSize', 14, 'Color', [0.6350 0.0780 0.1840]);
% eixos.Visible = 'off';
% titulo.Visible = 'on';