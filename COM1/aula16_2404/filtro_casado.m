close all
clear all
clc

% para este exemplo, lembrar da convolucao de 2 rect
% (conceito de filtro casado) - conceito de correlacao
N = 100; % fator superamostragem
SNR = 10;
info = [1 0 1 1 0 1 0 0];
info_up = upsample(info, N);
filtro_Tx = ones(1,N);

sinal_Tx = filter(filtro_Tx, 1, info_up);

filtro_cas = fliplr(filtro_Tx);
sinal_Rx_awgn = awgn(sinal_Tx, SNR);
sinal_Rx = filter(filtro_cas, 1, sinal_Tx)/N;

figure(1)
subplot(311)
plot(sinal_Tx)
ylim([-3 3])
subplot(312)
plot(sinal_Rx_awgn)
ylim([-3 3])
subplot(313)
plot(sinal_Rx)
ylim([-3 3])