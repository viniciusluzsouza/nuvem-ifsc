% Projeto filtro 4 IIR - Chebyshev 1
% BS - (fa = 8000 Hz, f1 = 1200 Hz; f2 = 1250 Hz, f3 = 1300 Hz;
% f4 = 1400 Hz, Ap = 0.5 dB, As = 60 dB, GdB = 0 dB)

close all;
clear all;
clc;

ExecutarAjuste = 1;

%% Especificacoes
Ap = 0.5; As = 60; GdB = 0;

fa_espec = 8000; wa_espec = 2*pi*fa_espec;
fp1_espec = 1250; fp2_espec = 1300;
fs1_espec = 1200; fs2_espec = 1400;

wp1_espec = 2*pi*fp1_espec; wp2_espec = 2*pi*fp2_espec;
ws1_espec = 2*pi*fs1_espec; ws2_espec = 2*pi*fs2_espec;

tetha_p1_espec = wp1_espec/(wa_espec/2);
tetha_p2_espec = wp2_espec/(wa_espec/2);
tetha_s1_espec = ws1_espec/(wa_espec/2);
tetha_s2_espec = ws2_espec/(wa_espec/2);

lambda_p1_espec = 2*tan(tetha_p1_espec * pi/2);
lambda_p2_espec = 2*tan(tetha_p2_espec * pi/2);
lambda_s1_espec = 2*tan(tetha_s1_espec * pi/2);
lambda_s2_espec = 2*tan(tetha_s2_espec * pi/2);

lambda_0 = sqrt(lambda_p2_espec*lambda_p1_espec);
Bwp = lambda_p2_espec - lambda_p1_espec;

Os1 = abs((Bwp*lambda_s1_espec)/(lambda_0^2 - lambda_s1_espec^2));
Os2 = abs((Bwp*lambda_s2_espec)/(lambda_0^2 - lambda_s2_espec^2));

Os_espec = min(Os1, Os2);
Op_espec = 1;

% Ajustes
delta_fp1 = 0;
delta_fp2 = 0;
delta_fs1 = 0;
delta_fs2 = 0;
if ExecutarAjuste
    delta_fp2 = 0;
end

fa_ajust = fa_espec;
fp1_ajust = fp1_espec + delta_fp1;
fp2_ajust = fp2_espec + delta_fp2;
fs1_ajust = fs1_espec + delta_fs1;
fs2_ajust = fs2_espec + delta_fs2;

wa_ajust = wa_espec;
wp1_ajust = 2*pi*fp1_ajust; wp2_ajust = 2*pi*fp2_ajust;
ws1_ajust = 2*pi*fs1_ajust; ws2_ajust = 2*pi*fs2_ajust;

tetha_p1_ajust = wp1_ajust/(wa_ajust/2);
tetha_p2_ajust = wp2_ajust/(wa_ajust/2);
tetha_s1_ajust = ws1_ajust/(wa_ajust/2);
tetha_s2_ajust = ws2_ajust/(wa_ajust/2);

lambda_p1_ajust = 2*tan(tetha_p1_ajust * pi/2);
lambda_p2_ajust = 2*tan(tetha_p2_ajust * pi/2);
lambda_s1_ajust = 2*tan(tetha_s1_ajust * pi/2);
lambda_s2_ajust = 2*tan(tetha_s2_ajust * pi/2);

lambda_0_ajust = sqrt(lambda_p2_ajust*lambda_p1_ajust);
Bwp_ajust = lambda_p2_ajust - lambda_p1_ajust;

Os1_ajust = abs((Bwp_ajust*lambda_s1_ajust)/(lambda_0_ajust^2 - lambda_s1_ajust^2));
Os2_ajust = abs((Bwp_ajust*lambda_s2_ajust)/(lambda_0_ajust^2 - lambda_s2_ajust^2));

Os_ajust = min(Os1_ajust, Os2_ajust);
Op_ajust = 1;

Os = Os_ajust;
Op = Op_ajust;
fa = fa_espec;

%% Chebyshev I
n = cheb1ord(Op, Os, Ap, As,'s');
[b, a] = cheby1(n,As, Os, 's');

%% Primeiro plot
figure(1)
subplot(121)
[h, w] = freqs(b, a, logspace(-2, 1, 1000000));
semilogx(w, 20*log10(abs(h)))
title('H(p)')
grid on; hold on;
plot([10^-2,Os_espec,Os_espec,10^1],[0,0,-As,-As], 'r')
plot([10^-2,Op_espec,Op_espec],[-Ap,-Ap,-80], 'r')
ylim([-60 10]);
hold off;
subplot(122)
zplane(b, a);

%% Transformacao de frequencia
% LP para BP
syms p;
Np(p) = poly2sym(b, p);
Dp(p) = poly2sym(a, p);
Hp(p) = Np(p) / Dp(p);
pretty(vpa(collect(Hp(p)), 5))


% Normalizando de acordo com p^n
syms s;
eq = (Bwp*s)/(s^2 + lambda_0^2);
Hs(s) = collect(subs(Hp(p), eq));
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
subplot(121)
[hf, wf] = freqs(bsn, asn, linspace(0, 6, 100000));
% semilogx(wf, 20*log10(abs(hf)))
plot(wf,20*log10(abs(hf)));
ylim([-60 10])
title('H(s)')
grid on
hold on
plot([0,lambda_s1_espec,lambda_s1_espec,lambda_s2_espec, lambda_s2_espec, 10],[-As,-As,Ap,Ap,-As,-As], 'r')
plot([lambda_p1_espec,lambda_p1_espec,lambda_p2_espec, lambda_p2_espec],[-60,-Ap,-Ap,-60], 'g')
subplot(122)
zplane(bsn, asn)

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
ylim([-60 10])
title('H(z)')
grid on
hold on
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec, 10000],[-As,-As,Ap,Ap,-As,-As], 'r')
plot([fp1_espec,fp1_espec,fp2_espec, fp2_espec],[-60,-Ap,-Ap,-60], 'g')

%%
figure(4)
% suptitle(['LP IIR ' num2str(fp_espec) '-' num2str(fs_espec) ' Ordem: ' num2str(n)])

subplot(321)
[hz, wz] = freqz(bzn, azn, linspace(0, pi, 10000));
plot(wz/pi*fa/2, 20*log10(abs(hz)));
ylim([-80 10])
title('Resposta de Magnitude para H(z)')
grid on
hold on
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec, 10000],[-As,-As,Ap,Ap,-As,-As], 'r')
plot([fp1_espec,fp1_espec,fp2_espec, fp2_espec],[-60,-Ap,-Ap,-60], 'g')

subplot(3,2,[4 6])
zplane(bzn, azn);
title('Diagrama de polos (x) e zeros (o)')

subplot(322)
stem(bzn), grid on;
title('Resposta ao impulso')

subplot(323)
plot(wz/pi, unwrap(angle(hz))/pi); grid on;
title('Resposta de Fase para H(z)')

subplot(325)
grpdelay(bzn, 1)
title('Atraso de grupo para H(z)')
