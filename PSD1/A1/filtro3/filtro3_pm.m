% Projeto filtro 3 FIR PM
% BP - (fa = 10000 Hz, f1 = 3000 Hz; f2 = 3200 Hz, f3 = 3400 Hz;
% f4 = 3500 Hz, Ap = 2 dB, As = 30 dB, GdB = -10 dB)

close all;
clear all;
clc;

ExecutarAjuste = 1;

%% Especificacoes
Ap = 2; As = 30; GdB = -10;

fa = 10000;
fp1 = 3200; fp2 = 3400;
fs1 = 3000; fs2 = 3500;

fcuts = [fs1 fp1 fp2 fs2];
w = fcuts/fa*(2*pi);
ws1 = w(1)/pi; wp1 = w(2)/pi; wp2 = w(3)/pi; ws2 = w(4)/pi;

mags = [0 1 0];
devs_As = 10^(-(As+1.6)/20);
devs_Ap = 1-10^(-Ap/20);
devs = [devs_As devs_Ap devs_As];
G0 = GdB;

% calculo da ordem com firpmord
if ExecutarAjuste
    fcuts = fcuts + [0 -15 10 0];
end

[n,f0,a0,w0] = firpmord(fcuts,mags,devs,fa);

% calculo algoritmo PM
h_pm = firpm(n,f0,a0,w0);
h_pm = h_pm*10^(G0/20);

%%
figure(1)
subplot(321)
title('Resposta de Frequencia')
[h, w] = freqz(h_pm, 1, linspace(0,pi,100000));
% plot(w/pi, abs(h)); grid on;
plot(w*fa/2/pi,20*log10(abs(h))); grid on;
title('Resposta de Frequencia')
xlim([2000 5000]);ylim([-80 10]);
hold on;
Amin = 80;
As = As - G0;
Ap = Ap + G0;
plot([wp1, wp1, wp2, wp2]*fa/2, [-Amin, Ap-4, Ap-4, -Amin], '-r')
plot([0, ws1, ws1, ws2, ws2, 1]*fa/2, [-As, -As, Ap, Ap, -As,-As], '-m')

subplot(322)
zplane(h_pm, 1); axis([-2 2 -2 2]);
title('Diagrama de polos e zeros')

subplot(3,2,3:4)
plot(w*fa/2/pi,20*log10(abs(h))); grid on;
title('Banda Passagem')
grid on; hold on;
plot([wp1, wp1, wp2, wp2]*fa/2, [-Amin, Ap-4, Ap-4, -Amin], '-r')
plot([0, ws1, ws1, ws2, ws2, 1]*fa/2, [-As, -As, Ap, Ap, -As,-As], '-m')
xlim([2850 3650]); ylim([-80 0]);

subplot(3,2,5)
plot(w*fa/2/pi,20*log10(abs(h))); grid on;
title('Banda de Rejeição')
grid on; hold on;
plot([wp1, wp1, wp2, wp2]*fa/2, [-Amin, Ap-4, Ap-4, -Amin], '-r')
plot([0, ws1, ws1, ws2, ws2, 1]*fa/2, [-As, -As, Ap, Ap, -As,-As], '-m')
xlim([2500 3250]); ylim([-80 0]);

subplot(3,2,6)
plot(w*fa/2/pi,20*log10(abs(h))); grid on;
title('Banda de Rejeição')
grid on; hold on;
plot([wp1, wp1, wp2, wp2]*fa/2, [-Amin, Ap-4, Ap-4, -Amin], '-r')
plot([0, ws1, ws1, ws2, ws2, 1]*fa/2, [-As, -As, Ap, Ap, -As,-As], '-m')
xlim([3350 4000]); ylim([-80 0]);

%%
figure(2)
%suptitle(['LP FIR ' num2str(fp) '-' num2str(fs) ' Ordem: ' num2str(2*M+1)])

escala = fa/2;
subplot(3,2,[4 6])
zplane(h_pm, 1);
axis([-2 2 -2 2])
title('Diagrama de polos (x) e zeros (o)')

clear h w
[h, w] = freqz(h_pm, 1, 'whole');

subplot(322)
stem(h_pm), grid on;
title('Resposta ao impulso')

subplot(321)
[h, w] = freqz(h_pm, 1, linspace(0,pi,10000));
% plot(w/pi, abs(h)); grid on;
% plot(w/pi*escala, 20*log10(abs(h))); grid on;
plot(w*fa/2/pi,20*log10(abs(h)))
hold on;
title('Resposta de Frequencia')
ylim([-80 5])
Amin = 80;
plot([wp1, wp1, wp2, wp2]*fa/2, [-Amin, Ap-4, Ap-4, -Amin], '-r')
plot([0, ws1, ws1, ws2, ws2, 1]*fa/2, [-As, -As, Ap, Ap, -As,-As], '-m')
xlim([0 fa/2])

subplot(323)
plot(w/pi*escala, unwrap(angle(h))/pi); grid on;
title('Resposta de Fase')

subplot(325)
grpdelay(h_pm, 1)
title('Atraso de grupo')
