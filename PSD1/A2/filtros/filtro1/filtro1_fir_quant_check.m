% clear Num hq wq

%%
figure(1)
subplot(2,2,[1 2])
[hq, wq] = freqz(Num, 1, linspace(0,pi,100000));
% plot(w/pi, abs(h)); grid on;
plot(wq/pi, 20*log10(abs(hq))); grid on;
title('a) Resposta em frequencia')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

subplot(223)
plot(wq/pi, 20*log10(abs(hq)));
title('b) Banda Passagem')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

subplot(224)
plot(wq/pi, 20*log10(abs(hq)));
title('c) Banda de Rejeicao')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

%%
figure(2)
subplot(2,2,[2 4])
zplane(Num, 1); axis([-2 2 -2 2]);
title('b) Diagrama de polos (x) e zeros (o) - Quantizado')
xlabel('Real');
ylabel('Imaginario');

%%
figure(3)
%suptitle(['LP FIR ' num2str(fp) '-' num2str(fs) ' Ordem: ' num2str(2*M+1)])

escala = fa/2;
subplot(3,2,[4 6])
zplane(Num, 1);
axis([-2 2 -2 2])
title('e) Diagrama de polos (x) e zeros (o)')
xlabel('Real');
ylabel('Imaginario');
legend('Quantizado', 'Quantizado');

clear hq wq
[hq, wq] = freqz(Num, 1, 'whole');

subplot(322)
x_imp = [0:length(Num)-1]/fa*1000;
stem(x_imp, Num); grid on;
title('b) Resposta ao impulso')
xlabel('Amostras (ms)');
ylabel('Amplitude (adm)');
legend('Quantizado');

subplot(321)
clear hq wq
[hq, wq] = freqz(Num, 1, linspace(0,pi,10000));
% plot(w/pi, abs(h)); grid on;
plot(wq/pi*escala, 20*log10(abs(hq))); grid on;
hold on;
title('a) Resposta em Frequencia')
ylim([-80 5])
Amin = 80;
% plot([0 wp wp]/pi, -[Ap Ap Amin], 'r');
plot([0,fs,fs,fa/2],[0,0,-As,-As], 'r')
plot([0,fp,fp,],[-Ap,-Ap,-80], 'r')
xlim([0 fa/2])
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Quantizado');

subplot(323)
plot(wq/pi*escala, unwrap(angle(hq))/pi); grid on;
title('c) Resposta de Fase')
xlabel('Frequencia (Hz)');
ylabel('Fase (rad)');
legend('Quantizado');

subplot(325)
[del_y, del_x] = grpdelay(Num, 1);
plot(del_x/pi*fa/2, del_y/fa*1000);
title('d) Atraso de grupo')
xlabel('Frequencia (Hz)');
ylabel('Tempo (ms)');
legend('Quantizado');