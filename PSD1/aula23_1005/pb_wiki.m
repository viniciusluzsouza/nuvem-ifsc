clear all;
close all;
clc;

%% Projetar o filtro passa baixas 
% Specs:
fp = 1200;
fs = 1380;
fa = 8000; %fsamp
Ap = 1; As = 50;

fcuts = [fp fs];
w = fcuts/fa*(2*pi);
wp = w(1)/pi; ws = w(2)/pi;

mags = [1 0];
% devs = [1-10^(-Ap/20) 10^(-As/20)];
devs = [1-10^(-(Ap/2-0.06)/20) 10^(-As/20)];
G0 = -Ap/2;

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
plot([0,wp,wp]*fa/2,[-Ap,-Ap,-80], '-red')
plot([0,ws,ws,1]*fa/2,[0,0,-As,-As], '-red')




