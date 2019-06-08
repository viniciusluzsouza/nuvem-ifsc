% Projeto filtro 3 IIR - Chebyshev 2
% BP - (fa = 10000 Hz, f1 = 3000 Hz; f2 = 3200 Hz, f3 = 3400 Hz;
% f4 = 3500 Hz, Ap = 2 dB, As = 30 dB, GdB = -10 dB)

close all;
clear all;
clc;

ExecutarAjuste = 1;

%% Especificacoes
Ap = 2; As = 30; GdB = -10;

fa_espec = 10000; wa_espec = 2*pi*fa_espec;
fp1_espec = 3200; fp2_espec = 3400;
fs1_espec = 3000; fs2_espec = 3500;

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

Os1 = abs((lambda_0^2 - lambda_s1_espec^2)/(Bwp*lambda_s1_espec));
Os2 = abs((lambda_0^2 - lambda_s2_espec^2)/(Bwp*lambda_s2_espec));

Os_espec = min(Os1, Os2);
Op_espec = 1;

% Ajustes
delta_fp1 = 0;
delta_fp2 = 0;
delta_fs1 = 0;
delta_fs2 = 0;
if ExecutarAjuste
    delta_fp2 = (3423-fp2_espec)/2;
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

Os1_ajust = abs((lambda_0_ajust^2 - lambda_s1_ajust^2)/(Bwp_ajust*lambda_s1_ajust));
Os2_ajust = abs((lambda_0_ajust^2 - lambda_s2_ajust^2)/(Bwp_ajust*lambda_s2_ajust));

Os_ajust = min(Os1_ajust, Os2_ajust);
Op_ajust = 1;

Os = Os_ajust;
Op = Op_ajust;
fa = fa_espec;

%% Chebyshev II
n = cheb2ord(Op, Os, Ap, As,'s');
[b, a] = cheby2(n,As, Os, 's');

%% Primeiro plot
figure(1)
subplot(221)
[h, w] = freqs(b, a, logspace(-2, 1, 1000000));
semilogx(w, 20*log10(abs(h)))
title('H(p)')
grid on; hold on;
plot([10^-2,Os_espec,Os_espec,10^1],[Ap,Ap,-As,-As], 'r')
plot([10^-2,Op_espec,Op_espec],[-Ap,-Ap,-80], 'r')
ylim([-60 10]);
hold off;

subplot(222)
zplane(b, a);
title('Diagrama de polos e zeros')
subplot(2,2,[3 4])
semilogx(w, 20*log10(abs(h)))
title('H(p) - Banda Passagem')
grid on; hold on;
plot([10^-2,Os_espec,Os_espec,10^1],[Ap,Ap,-As,-As], 'r')
plot([10^-2,Op_espec,Op_espec],[-Ap,-Ap,-80], 'r')
xlim([0.6 2.2]); ylim([-3 1]);

%% Transformacao de frequencia
% LP para BP
syms p;
Np(p) = poly2sym(b, p);
Dp(p) = poly2sym(a, p);
Hp(p) = Np(p) / Dp(p);
pretty(vpa(collect(Hp(p)), 5))


% Normalizando de acordo com p^n
syms s;
eq = (s^2 + lambda_0^2)/s/Bwp;
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
suptitle('Transforma????o LP -> BP')
subplot(221)
[hf, wf] = freqs(bsn, asn, linspace(0, 6, 100000));
% semilogx(wf, 20*log10(abs(hf)))
plot(wf,20*log10(abs(hf)));
ylim([-60 10])
title('H(s)')
grid on
hold on
plot([0,lambda_s1_espec,lambda_s1_espec,lambda_s2_espec, lambda_s2_espec, 6],[-As,-As,Ap,Ap,-As,-As], 'r')
plot([lambda_p1_espec,lambda_p1_espec,lambda_p2_espec, lambda_p2_espec],[-60,-Ap,-Ap,-60], 'g')

subplot(222)
zplane(bsn, asn)
title('Diagrama de polos e zeros')
subplot(2,2,[3 4])
plot(wf,20*log10(abs(hf)));
title('H(s) - Banda Passagem')
grid on; hold on;
plot([0,lambda_s1_espec,lambda_s1_espec,lambda_s2_espec, lambda_s2_espec, 6],[-As,-As,Ap,Ap,-As,-As], 'r')
plot([lambda_p1_espec,lambda_p1_espec,lambda_p2_espec, lambda_p2_espec],[-60,-Ap,-Ap,-60], 'g')
xlim([2.6 4.2]); ylim([-6 3]);

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
suptitle('Transforma????o anal??gico -> digital')
subplot(221)
[hz, wz] = freqz(bzn, azn, linspace(0, pi, 100000));
plot(wz/pi*fa/2, 20*log10(abs(hz)));
ylim([-60 10])
title('H(z)')
grid on
hold on
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec, 6000],[-As,-As,Ap,Ap,-As,-As], 'r')
plot([fp1_espec,fp1_espec,fp2_espec, fp2_espec],[-60,-Ap,-Ap,-60], 'g')

subplot(222)
zplane(bzn, azn);
title('Diagrama de polos e zeros')
subplot(2,2,[3 4])
plot(wz/pi*fa/2, 20*log10(abs(hz)));
title('H(z) - Banda Passagem')
grid on; hold on;
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec, 6000],[-As,-As,Ap,Ap,-As,-As], 'r')
plot([fp1_espec,fp1_espec,fp2_espec, fp2_espec],[-60,-Ap,-Ap,-60], 'g')
xlim([2900 3600]); ylim([-6 4]);

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
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec, 6000],[-As,-As,Ap,Ap,-As,-As], 'r')
plot([fp1_espec,fp1_espec,fp2_espec, fp2_espec],[-60,-Ap,-Ap,-60], 'g')

subplot(3,2,[4 6])
zplane(bzn, azn);
title('Diagrama de polos (x) e zeros (o)')

subplot(322)
delta = [1, zeros(1, 10)];
imp = filter(bzn, azn, delta);
stem(imp); grid on;
title('Resposta ao impulso')

subplot(323)
plot(wz/pi, unwrap(angle(hz))/pi); grid on;
title('Resposta de Fase para H(z)')

subplot(325)
grpdelay(bzn, azn)
title('Atraso de grupo para H(z)')
