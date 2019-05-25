N = 100;
M = 4;
fc = 10e3;
info = randint(1, 10, M);
passo = (2*length(info)/fc)/(length(info)*N);
info_format = rectpulse(info, N);
t = [0:passo:(2*length(info)/fc)-passo];
s_t_psk = cos(2*pi*fc*t + ((2*pi*info_format)/M)); % PSK
s_t_fsk = cos(2*pi*fc*t.*(info_format+1)); % FSK
s_t_ask = info_format.*cos(2*pi*fc*t); % ASK

subplot(411)
plot(t, info_format)
subplot(412)
plot(t, s_t_psk)
subplot(413)
plot(t, s_t_fsk)
subplot(414)
plot(t, s_t_ask)

% exercicio 2, so mudar para M = 4