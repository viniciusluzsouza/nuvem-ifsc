close all;
clear all;
clc;

N = 10; % fator de superamostragem
fs = 8000; k = 8; Rb = fs*k;

info = randint(1, 100, [0 1]);
info_up = rectpulse(info, N);
filtro_nrz = ones(1, N); % filtro NRZ
tx = filter(filtro_nrz, 1, info_up);

passo_t = 1/(N*Rb);
t = [0:passo_t:(length(info)/Rb) - passo_t];


