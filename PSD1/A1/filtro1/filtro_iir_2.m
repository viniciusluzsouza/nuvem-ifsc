% Projeto filtro 1
% LP - (fa = 10000 Hz, f1 = 2800 Hz; f2 = 3200 Hz, Ap = 1 dB, As = 40 dB, GdB = 0 dB)

close all;
clear all;
clc;

%% Especificacoes
fa = 10000; fp = 2800; fs = 3200;
Ap = 1; As = 40; GdB = 0;

wp = 2*pi*fp; ws = 2*pi*fs; wa = 2*pi*fa;
Wp = 1; Ws = ws/wp;

tetha_s = ws/(wa/2);
tetha_p = wp/(wa/2);
lambda_s = 2*tan(tetha_s * pi/2);
lambda_p = 2*tan(tetha_p * pi/2);
Os = lambda_s/lambda_p;
Op = 1;

%% IIR Eliptico
[n, Wn] = ellipord(Op, Os, Ap, As,'s');
[b,a] = ellip(n,Ap,As, Wn, 's');

%% Primeiro plot
figure(1)
[h, w] = freqs(b, a, logspace(-2, 1, 100000));
semilogx(w, 20*log10(abs(h)))
title('H(p)')
grid on; hold on;
plot([10^-2,Os,Os,10^1],[0,0,-As,-As], 'r')
plot([10^-2,1,1],[-Ap,-Ap,-80], 'r')
xlim([0.5 2]); ylim([-60 10]);
hold off;

%% Transformacao de frequencia
% LP para LP
syms p;
Np(p) = poly2sym(b, p);
Dp(p) = poly2sym(a, p);
Hp(p) = Np(p) / Dp(p);
pretty(vpa(collect(Hp(p)), 5))

%% Normalizando de acordo com p^n
syms s;
Hs(s) = collect(subs(Hp(p), s/lambda_p));
pretty(vpa(Hs(s), 3))
[N, D] = numden(Hs(s));

bs = sym2poly(N);
as = sym2poly(D);
an = as(1);
bsn = bs/an;
asn = as/an;
Hsn(s) = poly2sym(bsn, s)/poly2sym(asn, s);
pretty(vpa(Hsn(s), 5))

%% Resposta em frequencia
figure(2)
[hf, wf] = freqs(bsn, asn, linspace(0, 6, 100000));
% semilogx(wf, 20*log10(abs(hf)))
plot(wf,20*log10(abs(hf)));
ylim([-80 10])
title('H(s)')
grid on
hold on
plot([0,lambda_s,lambda_s,6],[0,0,-As,-As], 'r')
plot([0,lambda_p,lambda_p],[-Ap,-Ap,-80], 'r')

%% Transformando em Z (bilinear)
syms z;
aux = 2*((z-1)/(z+1));
Hz(z) = collect(subs(Hs(s), aux));
pretty(vpa(Hz(z),3))

[Nz,Dz] = numden(Hz(z));
bz = sym2poly(Nz);
az = sym2poly(Dz);

an = az(1);
bzn = bz/an;
azn = az/an;

Hzn(z) = poly2sym(bzn,z) / poly2sym(azn,z);
pretty(vpa(Hzn(z),5))

%%
figure(3)
[hz, wz] = freqz(bzn, azn, linspace(0, pi, 100000));
plot(wz/pi*fa/2, 20*log10(abs(hz)));
ylim([-80 10])
title('H(z)')
grid on
hold on
plot([0,fs,fs,6000],[0,0,-As,-As], 'r')
plot([0,fp,fp,],[-Ap,-Ap,-80], 'r')

%%
figure(4)
subplot(321)
[hz, wz] = freqz(bzn, azn, linspace(0, pi, 10000));
plot(wz/pi*fa/2, 20*log10(abs(hz)));
ylim([-80 10])
title('H(z)')
grid on
hold on
plot([0,fs,fs,6000],[0,0,-As,-As], 'r')
plot([0,fp,fp,],[-Ap,-Ap,-80], 'r')

subplot(3,2,[4 6])
zplane(bzn, azn);

subplot(322)
stem(bzn), grid on;

subplot(323)
plot(wz/pi, unwrap(angle(hz))/pi); grid on;
subplot(325)
grpdelay(bzn, 1)