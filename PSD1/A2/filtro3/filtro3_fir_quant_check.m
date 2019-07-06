% clear Num h w

%%
figure(1)
subplot(3,2,1:2)
[hq, wq] = freqz(Num, 1, linspace(0,pi,100000));
% plot(w/pi, abs(h)); grid on;
plot(wq*fa/2/pi,20*log10(abs(hq))); grid on;
title('a) Resposta em Frequencia')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

subplot(3,2,3:4)
plot(wq*fa/2/pi,20*log10(abs(hq))); grid on;
title('b) Banda Passagem')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

subplot(3,2,5)
plot(wq*fa/2/pi,20*log10(abs(hq))); grid on;
title('c) Banda de Rejeicao')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

subplot(3,2,6)
plot(wq*fa/2/pi,20*log10(abs(hq))); grid on;
title('d) Banda de Rejeicao')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

%%
figure(2)
subplot(2,2,[2 4])
zplane(Num, 1); axis([-2 6 -2 2]);
title('b) Diagrama de polos (x) e zeros (o) - Quantizado')
xlabel('Real');
ylabel('Imaginario');
%%
figure(3)
%suptitle(['LP FIR ' num2str(fp) '-' num2str(fs) ' Ordem: ' num2str(2*M+1)])

escala = fa/2;
subplot(3,2,[4 6])
zplane(Num, 1);
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
% plot(w/pi*escala, 20*log10(abs(h))); grid on;
plot(wq*fa/2/pi,20*log10(abs(hq)))
hold on; grid on;
title('a) Resposta em Frequencia')
ylim([-60 -5])
Amin = 80;
plot([wp1, wp1, wp2, wp2]*fa/2, [-Amin, Ap-2, Ap-2, -Amin], '-r')
plot([0, ws1, ws1, ws2, ws2, 1]*fa/2, [-As, -As, Ap, Ap, -As,-As], '-m')
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