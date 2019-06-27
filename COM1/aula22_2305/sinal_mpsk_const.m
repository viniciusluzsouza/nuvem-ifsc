% vamos analisar somente a constelacao
clear all
close all
clc

M = 16;
SNR = 50;
% info = randint(1, 10000, M);
info = randi([0 M-1], [1 1000000]);
% sinal_MPSK = exp(j*2*pi*info/M);
% sinal_MPSK = pskmod(info, M);
sinal_MPSK = qammod(info, M);
sinal_MPSK_rx = awgn(sinal_MPSK, SNR);
scatterplot(sinal_MPSK_rx);