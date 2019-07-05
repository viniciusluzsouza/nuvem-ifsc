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

subplot(3,2,3)
plot(wq*fa/2/pi,20*log10(abs(hq))); grid on;
title('b) Banda Passagem')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

subplot(3,2,4)
plot(wq*fa/2/pi,20*log10(abs(hq))); grid on;
title('c) Banda Passagem')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

subplot(3,2,5:6)
plot(wq*fa/2/pi,20*log10(abs(hq))); grid on;
title('d) Banda de Rejeicao')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
legend('Referencia', 'Quantizado');

%%
figure(2)
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
[hq, wq] = freqz(Num, 1, linspace(0,pi,100000));
% plot(w/pi, abs(h)); grid on;
plot(wq*fa/2/pi,20*log10(abs(hq))); grid on;
title('a) Resposta em Frequencia')
xlim([1100 1500]); ylim([-80 5]);
grid on; hold on;
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');
Amin = 80;
plot([0, ws1, ws1, ws2, ws2, 1]*fa/2, [0, 0, -As, -As, 0,0], '-m')
plot([0, wp1, wp1, wp2, wp2, 1]*fa/2, [-Ap, -Ap, -120, -120, -Ap, -Ap], '-r')
xlim([1100 1500])
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