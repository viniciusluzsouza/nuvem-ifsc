% Neste exemplo, iremos variar a amplitude do sinal, que tem a mesma
% funcionalidade de variar a fase (cos(0) = -cos(pi))

close all;
clear all;
clc;

N = 40; % fator superamostragem
fc = 10e3; % frequencia da portadora
% info = [1 0 0 1];
info = randint(1, 10000);
info_BPSK = exp((j*2*pi*info)/2); % mapear a amplitude

info_BPSK = rectpulse(info_BPSK, N); % umpsample e filter (convolucao)

% para ter info no dominio do tempo, vamos multiplicar por uma funcao
% fi(t), que neste caso, e um cosseno
passo = (2*length(info)/fc)/(length(info)*40);
t = [0:passo:(2*length(info)/fc)-passo]; % 2 periodos por simbolo
c_t = cos(2*pi*fc*t);
s_t = info_BPSK.*cos(2*pi*fc*t);

figure(1)
subplot(311)
plot(t, info_BPSK)
xlim([0 8/fc])
subplot(312)
plot(t, c_t)
xlim([0 8/fc])
subplot(313)
plot(t, s_t)
xlim([0 8/fc])

% vamos ver densidade espectral
INFO_BPSK = fftshift(fft(info_BPSK));
S_f = fftshift(fft(s_t));
f = [-100e3:0.5:100e3-0.5 ];

figure(2)
subplot(211)
plot(f,abs(INFO_BPSK).^2) % espectro em banda base
subplot(212)
plot(f, abs(S_f).^2) % espectro em banda passante
% potencia ^2 (densidade espectral de pot)
