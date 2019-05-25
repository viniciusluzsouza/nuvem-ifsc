clear all;
close all;
clc;

N = 100; % fator de superamostragem
A = 1; % amplitude pulso (1V)
SNR = 10;
passo_t = 1/N;
filtro_nrz = ones(1, N); % filtro NRZ
limiar_nrz = 0.5;

info = [0 1 1 0 1 0 1 1 0 1 0];
info_up = upsample(info, N);
tx = filter(filtro_nrz, 1, info_up)*A;

rx = awgn(tx, SNR);
z_T = rx(N/2:N:end);
info_rx = z_T > limiar_nrz;

filtro_cas = fliplr(filtro_nrz);
rx_filtrado = filter(filtro_cas, 1, rx)/N;
z_T = rx_filtrado(N/2:N:end);
info_rx_filtrado = rx_filtrado > limiar_nrz;

figure(1)
subplot(311)
plot(tx)
subplot(312)
plot(rx)
subplot(313)
plot(rx_filtrado)