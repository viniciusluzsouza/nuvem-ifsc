% Projeto filtro 4 FIR PM
% BP - (fa = 8000 Hz, f1 = 1200 Hz; f2 = 1250 Hz, f3 = 1300 Hz;
% f4 = 1400 Hz, Ap = 0.5 dB, As = 60 dB, GdB = 0 dB)

close all;
clear all;
clc;

ExecutarAjuste = 1;

%% Especificacoes
Ap = 0.5; As = 60; GdB = 0;

fa = 8000;
fp1 = 1200; fp2 = 1400;
fs1 = 1250; fs2 = 1300;

fcuts = [fp1 fs1 fs2 fp2];
w = fcuts/fa*(2*pi);
wp1 = w(1)/pi; ws1 = w(2)/pi; ws2 = w(3)/pi; wp2 = w(4)/pi;

mags = [1 0 1];
devs_As = 10^(-As/20);
devs_Ap = 1-10^(-Ap/20);
devs = [devs_Ap devs_As devs_Ap];
G0 = GdB;

if ExecutarAjuste
    G0 = G0 - 0.23;
end

% calculo da ordem com firpmord
[n,f0,a0,w0] = firpmord(fcuts,mags,devs,fa);

% calculo algoritmo PM
h_pm = firpm(n,f0,a0,w0);
h_pm = h_pm*10^(G0/20);

%%
figure(1)
subplot(3,2,[1 2])
[h, w] = freqz(h_pm, 1, linspace(0,pi,100000));
% plot(w/pi, abs(h)); grid on;
plot(w*fa/2/pi,20*log10(abs(h))); grid on;
title('a) Resposta em Frequencia')
xlim([1100 1500]); ylim([-80 5]);
hold on;
Amin = 80;
plot([0, ws1, ws1, ws2, ws2, 1]*fa/2, [0, 0, -As, -As, 0,0], '-m')
plot([0, wp1, wp1, wp2, wp2, 1]*fa/2, [-Ap, -Ap, -120, -120, -Ap, -Ap], '-r')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');

subplot(3,2,3)
plot(w*fa/2/pi,20*log10(abs(h))); grid on;
title('b) Banda Passagem')
grid on; hold on;
plot([0, ws1, ws1, ws2, ws2, 1]*fa/2, [0, 0, -As, -As, 0,0], '-m')
plot([0, wp1, wp1, wp2, wp2, 1]*fa/2, [-Ap, -Ap, -120, -120, -Ap, -Ap], '-r')
xlim([1195 1205]); ylim([-2 2]);
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');

subplot(3,2,4)
plot(w*fa/2/pi,20*log10(abs(h))); grid on;
title('c) Banda Passagem')
grid on; hold on;
plot([0, ws1, ws1, ws2, ws2, 1]*fa/2, [0, 0, -As, -As, 0,0], '-m')
plot([0, wp1, wp1, wp2, wp2, 1]*fa/2, [-Ap, -Ap, -120, -120, -Ap, -Ap], '-r')
xlim([1395 1405]); ylim([-2 2]);
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');

subplot(3,2,5:6)
plot(w*fa/2/pi,20*log10(abs(h))); grid on;
title('d) Banda de Rejeicao')
grid on; hold on;
plot([0, ws1, ws1, ws2, ws2, 1]*fa/2, [0, 0, -As, -As, 0,0], '-m')
plot([0, wp1, wp1, wp2, wp2, 1]*fa/2, [-Ap, -Ap, -120, -120, -Ap, -Ap], '-r')
xlim([1225 1325]); ylim([-65 -55]);
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');

figure(2)
subplot(2,2,[1 3])
zplane(h_pm, 1); axis([-1.15 6.15 -1.15 1.15]);
title('a) Diagrama de polos (x) e zeros (o) - Referencia')
xlabel('Real');
ylabel('Imaginario');
%%
% figure(2)
% %suptitle(['LP FIR ' num2str(fp) '-' num2str(fs) ' Ordem: ' num2str(2*M+1)])
% 
% escala = fa/2;
% subplot(3,2,[4 6])
% zplane(h_pm, 1);
% axis([-2 2 -2 2])
% title('e) Diagrama de polos (x) e zeros (o)')
% xlabel('Real');
% ylabel('Imaginario');
% 
% clear h w
% [h, w] = freqz(h_pm, 1, 'whole');
% 
% subplot(322)
% x_imp = [0:length(h_pm)-1]/fa*1000;
% stem(x_imp, h_pm); grid on;
% title('b) Resposta ao impulso')
% xlabel('Amostras (ms)');
% ylabel('Amplitude (adm)');
% 
% subplot(321)
% [h, w] = freqz(h_pm, 1, linspace(0,pi,100000));
% % plot(w/pi, abs(h)); grid on;
% plot(w*fa/2/pi,20*log10(abs(h))); grid on;
% title('a) Resposta em Frequencia')
% xlim([1100 1500]); ylim([-80 5]);
% grid on; hold on;
% xlabel('Frequencia (Hz)');
% ylabel('Magnitude (dB)');
% 
% Amin = 80;
% plot([0, ws1, ws1, ws2, ws2, 1]*fa/2, [0, 0, -As, -As, 0,0], '-m')
% plot([0, wp1, wp1, wp2, wp2, 1]*fa/2, [-Ap, -Ap, -120, -120, -Ap, -Ap], '-r')
% xlim([1100 1500])
% 
% subplot(323)
% plot(w/pi*escala, unwrap(angle(h))/pi); grid on;
% title('c) Resposta de Fase')
% xlabel('Frequencia (Hz)');
% ylabel('Fase (rad)');
% 
% subplot(325)
% [del_y, del_x] = grpdelay(h_pm, 1);
% plot(del_x/pi*fa/2, del_y/fa*1000);
% title('d) Atraso de grupo')
% xlabel('Frequencia (Hz)');
% ylabel('Tempo (ms)');

%%
syms z
H(z) = poly2sym(h_pm, z);
pretty(vpa(collect(H(z)), 3))