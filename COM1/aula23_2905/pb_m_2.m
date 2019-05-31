clear all;
close all;
clc;

%% 
% estamos calculando ser e nao ber (symbol error rate)
M = 16;
info = randint(1, 1000000, M);
info_mod = pskmod(info, M);

for SNR = 0:15
    info_rx = awgn(info_mod, SNR);
    info_hat = pskdemod(info_rx, M);
    [num(SNR+1), taxa(SNR+1)] = biterr(info, info_hat);
end

semilogy([0:15], taxa)
hold on

% figure(2)
% scatterplot(info_rx)