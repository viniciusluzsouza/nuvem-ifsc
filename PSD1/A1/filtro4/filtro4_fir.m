% Projeto filtro 4 FIR PM
% BP - (fa = 8000 Hz, f1 = 1200 Hz; f2 = 1250 Hz, f3 = 1300 Hz;
% f4 = 1400 Hz, Ap = 0.5 dB, As = 60 dB, GdB = 0 dB)

close all;
clear all;
clc;

ExecutarAjuste = 0;

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

% calculo da ordem com firpmord
[n,f0,a0,w0] = firpmord(fcuts,mags,devs,fa);

% calculo algoritmo PM
h_pm = firpm(n,f0,a0,w0);
h_pm = h_pm*10^(G0/20);

[Hw,w] = freqz(h_pm, 1, 10000);
plot(w*fa/2/pi,20*log10(abs(Hw)))
title_txt = ['PM Filter N = ' num2str(n)];
title(title_txt)
hold on
Amin = 80;
% ylim([-Amin 10])
plot([0, ws1, ws1, ws2, ws2, 1]*fa/2, [Ap, Ap, -As, -As, Ap,Ap], '-m')
plot([0, wp1, wp1, wp2, wp2, 1]*fa/2, [-Ap, -Ap, -120, -120, -Ap, -Ap], '-r')




