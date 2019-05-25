% vamos analisar somente a constelacao
clear all
close all
clc

M = 256;
SNR = 25;
info = randint(1, 10000, M);0
% sinal_MPSK = exp(j*2*pi*info/M);
% sinal_MPSK = pskmod(info, M);
sinal_MPSK = qammod(info, M);
sinal_MPSK_rx = awgn(sinal_MPSK, SNR);
scatterplot(sinal_MPSK_rx);