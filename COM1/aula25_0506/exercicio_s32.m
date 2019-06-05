clear all;
close all;
clc;

N = 100;
M = 2;
fc = 10e3;
info = randint(1, 10, M);
passo = (2*length(info)/fc)/(length(info)*N);
info_format = rectpulse(info, N);
t = [0:passo:(2*length(info)/fc)-passo];
s_t_fsk = cos(2*pi*fc*t.*(info_format+1)); % FSK
s_f_fsk = fftshift(fft(s_t_fsk));

% Sinal transmitido 
subplot(311)
plot(t, info_format)
subplot(312)
plot(t, s_t_fsk)
subplot(313)
% plot(t, s_f_fsk)