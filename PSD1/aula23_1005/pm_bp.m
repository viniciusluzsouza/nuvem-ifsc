clear all;
close all;
clc;

fsamp = 8000;
As = 50; Ap = 1;

fcuts = [1300 2400 3350 3400]; % valores de acordo com o exemplo passado (aula_20_nova_janela.m)
w = fcuts/8000*(2*pi);
ws1 = w(1)/pi; wp1 = w(2)/pi; wp2 = w(3)/pi; ws2 = w(4)/pi;
mags = [0 1 0];
devs_As = 10^(-As/20);
devs_Ap = 1-10^(-Ap/20);
devs = [devs_As devs_Ap devs_As];
G0 = 0;

% calculo da ordem com firpmord
fcuts = fcuts + [0 -1050 0 0]; % aumentando restricao para o algoritmo
[n,f0,a0,w0] = firpmord(fcuts,mags,devs,fsamp);

% calculo algoritmo PM
h_pm = firpm(n,f0,a0,w0);
h_pm = h_pm*10^(G0/20);

[Hw,w] = freqz(h_pm, 1, 10000);
plot(w*fsamp/2/pi,20*log10(abs(Hw)))
title_txt = ['PM Filter N = ' num2str(n)];
title(title_txt)
hold on
Amin = 80;
% ylim([-Amin 10])
plot([wp1, wp1, wp2, wp2]*fsamp/2, -[Amin Ap, Ap, Amin], '-r')
plot([0, ws1, ws1, ws2, ws2, 1]*fsamp/2,-[As, As, 0, 0, As,As], '-m')

