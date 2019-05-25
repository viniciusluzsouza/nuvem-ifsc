
N = 20;
M = 4;
fc = 10e3;
info = randint(1, 10, M);
passo = (2*length(info)/fc)/(length(info)*N);
info_MPSK = rectpulse(info, N);
t = [0:passo:(2*length(info)/fc)-passo];
s_t = cos(2*pi*fc*t + ((2*pi*info_MPSK)/M));

subplot(211)
plot(t, info_MPSK)
subplot(212)
plot(t, s_t)