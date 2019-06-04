close all;
clear all;
clc;

N = 20;
M = 16;
fc = 1e3;
info = randint(1, 100, M);
passo = (2*length(info)/fc)/(length(info)*N);
t = [0:passo:(2*length(info)/fc)-passo];

info_mod = qammod(info, M);
info_mod_real = real(info_mod);
info_mod_imag = imag(info_mod);

info_mod_real_format = rectpulse(info_mod_real, N);
info_mod_imag_format = rectpulse(info_mod_imag, N);

passo2 = (2*length(info_mod_real)/fc)/(length(info_mod_real)*N);
t2 = [0:passo2:(2*length(info_mod_real)/fc)-passo2];
info_real_desl = info_mod_real_format.*cos(2*pi*fc*t2);
info_imag_desl = info_mod_imag_format.*sin(2*pi*fc*t2);

info_sum = info_real_desl - info_imag_desl;
figure(1)
plot(t2, info_sum)

