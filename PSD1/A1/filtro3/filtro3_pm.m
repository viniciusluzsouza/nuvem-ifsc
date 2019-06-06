% Projeto filtro 3 FIR PM
% BP - (fa = 10000 Hz, f1 = 3000 Hz; f2 = 3200 Hz, f3 = 3400 Hz;
% f4 = 3500 Hz, Ap = 2 dB, As = 30 dB, GdB = -10 dB)

close all;
clear all;
clc;

ExecutarAjuste = 0;

%% Especificacoes
Ap = 2; As = 30; GdB = -10;

fa = 10000;
fp1 = 3200; fp2 = 3400;
fs1 = 3000; fs2 = 3500;

fcuts = [fs1 fp1 fp2 fs2];
w = fcuts/fa*(2*pi);
ws1 = w(1)/pi; wp1 = w(2)/pi; wp2 = w(3)/pi; ws2 = w(4)/pi;

mags = [0 1 0];
devs_As = 10^(-As/20);
devs_Ap = 1-10^(-Ap/20);
devs = [devs_As devs_Ap devs_As];
G0 = GdB;

% calculo da ordem com firpmord
% fcuts = fcuts + [5 -50 50 -5];
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
As = As - G0;
Ap = Ap + G0;
plot([wp1, wp1, wp2, wp2]*fa/2, [-Amin G0, G0, -Amin], '-r')
plot([0, ws1, ws1, ws2, ws2, 1]*fa/2, [-As, -As, Ap, Ap, -As,-As], '-m')




