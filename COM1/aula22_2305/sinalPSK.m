% Neste exemplo, diferente da aula passada, utilizamos a expressao
% completa em s_t, para variar a fase, e nao a amplitude

N = 20;
M = 2;
fc = 10e3;
info = randint(1, 10);
passo = (2*length(info)/fc)/(length(info)*N);
info_BPSK = rectpulse(info, N);
t = [0:passo:(2*length(info)/fc)-passo];
s_t = cos(2*pi*fc*t + ((2*pi*info_BPSK)/M));

subplot(211)
plot(t, info_BPSK)
subplot(212)
plot(t, s_t)