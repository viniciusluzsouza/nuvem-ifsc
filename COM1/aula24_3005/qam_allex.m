% Modulacao 16-QAM para trabalhar com SDR
%

clear all
close all
clc
%%
N = 20;
M = 16;
L = 100;
fc = 10e3;

fm = 2e3;
fs = 8e3;

wc = 2*pi*fc;
wm = 2*pi*fm;


info = randint(1, L, M);
info_rect = rectpulse(info, N); % sinal PAM
passo = ((2*length(info))/fs)/(length(info)*N);
t = [0:passo:((2*length(info))/fs)-passo];

%% fm = 1000;
% Vpp = 2;
% k = 4; % qtd de bits do quantizador
% %passo = Vpp/2^k; % Passo de quantizacao
% x_n = sin(2*pi*fm*t); % amostras do seno
% x_desl = x_n + ((Vpp/2) - (passo/2)); % Deslocando o sinal
% x_desl2 = x_desl/passo; % Dividindo pelo passo para ter os niveis
% x_qtz = round(x_desl2);
% 
% x_bin = de2bi(x_qtz); % vai gerar uma matriz
% [x, y] = size(x_bin);
% x_bin_linha = reshape(transpose(x_bin), 1, x*y); % Para colocar tudo em uma unica linh
%%

%sinal_MPSK = exp(j*2*pi*info/M);
sinal = qammod(info_rect, M);
scatterplot(sinal)
%% sin cos
sinal_fase = real(sinal);
sinal_quadratura = imag(sinal);


tx_fase = cos(wc*t).*sinal_fase;
tx_quadratura = sin(wc*t).*sinal_quadratura;

tx = tx_fase - tx_quadratura;

%% e^jwct

expo = exp(j*wc*t);
tx_exp = real(sinal.*expo);
%% Plots
figure(1)
subplot(411)
plot(t, sinal)
title('Sinal 16-QAM')

subplot(412)
plot(t, sinal_fase)
title('Fase')

subplot(413)
plot(t, sinal_quadratura)
title('Quadratura')

subplot(414)
plot(t, tx)
xlim([0 20/fc])
title('Sinal Modulado')

figure(2)
subplot(211)
plot(t, tx)
xlim([0 20/fc])
title('Sinal Modulado [sin cos]')

subplot(212)
plot(t, tx_exp)
xlim([0 20/fc])
title('Sinal Modulado [exp]')
