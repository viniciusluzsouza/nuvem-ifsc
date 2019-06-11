% Projeto filtro 4 IIR - Chebyshev 1
% BS - (fa = 8000 Hz, f1 = 1200 Hz; f2 = 1250 Hz, f3 = 1300 Hz;
% f4 = 1400 Hz, Ap = 0.5 dB, As = 60 dB, GdB = 0 dB)

close all;
clear all;
clc;

ExecutarAjuste = 0;

%% Especificacoes
Ap = 0.5; As = 60; GdB = 0;

fa_espec = 8000; wa_espec = 2*pi*fa_espec;
fp1_espec = 1200; fp2_espec = 1400;
fs1_espec = 1250; fs2_espec = 1300;

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

Os1 = abs((Bwp*lambda_s1_espec)/((lambda_0^2) - (lambda_s1_espec^2)));
Os2 = abs((Bwp*lambda_s2_espec)/((lambda_0^2) - (lambda_s2_espec^2)));

Os_espec = min(Os1, Os2);
Op_espec = 1;

Os = Os_espec;
Op = Op_espec;
fa = fa_espec;

% Ajustes
delta_fp1 = 0;
delta_fp2 = 0;
delta_fs1 = 0;
delta_fs2 = 0;
if ExecutarAjuste
    delta_fp2 = 0;
end


%% Chebyshev I
n = cheb1ord(Op, Os, Ap, As,'s');
[b, a] = cheby1(n,Ap, Op, 's');

%% Primeiro plot
figure(1)
subplot(221)
[h, w] = freqs(b, a, logspace(-2, 1, 1000000));
semilogx(w, 20*log10(abs(h)))
title('H(p)')
grid on; hold on;
plot([10^-2,Os_espec,Os_espec,10^1],[0,0,-As,-As], 'r')
plot([10^-2,Op_espec,Op_espec],[-Ap,-Ap,-80], 'r')
ylim([-80 10]);
hold off;

subplot(222)
zplane(b, a);
title('Diagrama de polos e zeros')
subplot(2,2,3)
semilogx(w, 20*log10(abs(h)))
title('H(p) - Banda Passagem')
grid on; hold on;
plot([10^-2,Os_espec,Os_espec,10^1],[0,0,-As,-As], 'r')
plot([10^-2,Op_espec,Op_espec],[-Ap,-Ap,-80], 'r')
xlim([0.91 1.1]); ylim([-2 1]);

subplot(2,2,4)
semilogx(w, 20*log10(abs(h)))
title('H(p) - Banda Rejeição')
grid on; hold on;
plot([10^-2,Os_espec,Os_espec,10^1],[0,0,-As,-As], 'r')
plot([10^-2,Op_espec,Op_espec],[-Ap,-Ap,-80], 'r')
xlim([0.91 3]); ylim([-65 -55]);


%% Transformacao de frequencia
% LP para BP
syms p;
Np(p) = poly2sym(b, p);
Dp(p) = poly2sym(a, p);
Hp(p) = Np(p) / Dp(p);
pretty(vpa(collect(Hp(p)), 5))


% Normalizando de acordo com p^n
syms s;
eq = (Bwp*s)/((s^2) + (lambda_0^2));
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
subplot(321)
[hf, wf] = freqs(bsn, asn, linspace(0, 6, 100000));
% semilogx(wf, 20*log10(abs(hf)))
plot(wf,20*log10(abs(hf)));
xlim([0.9 1.25]); ylim([-80 5])
title('H(s)')
grid on
hold on
plot([0,lambda_s1_espec,lambda_s1_espec,lambda_s2_espec, lambda_s2_espec,2],[0,0,-As,-As,0,0], 'r')
plot([0,lambda_p1_espec,lambda_p1_espec,lambda_p2_espec, lambda_p2_espec,2],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')

subplot(322)
zplane(bsn, asn);
title('Diagrama de polos e zeros')
subplot(3,2,4)
plot(wf,20*log10(abs(hf)));
title('H(s) - Banda Passagem')
grid on; hold on;
plot([0,lambda_s1_espec,lambda_s1_espec,lambda_s2_espec, lambda_s2_espec,2],[0,0,-As,-As,0,0], 'r')
plot([0,lambda_p1_espec,lambda_p1_espec,lambda_p2_espec, lambda_p2_espec,2],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')
xlim([1.1 2.5]); ylim([-100 10]);

subplot(3,2,3)
plot(wf,20*log10(abs(hf)));
title('H(s) - Banda Passagem')
grid on; hold on;
plot([0,lambda_s1_espec,lambda_s1_espec,lambda_s2_espec, lambda_s2_espec,2],[0,0,-As,-As,0,0], 'r')
plot([0,lambda_p1_espec,lambda_p1_espec,lambda_p2_espec, lambda_p2_espec,2],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')
xlim([0 1.1]); ylim([-100 10]);


subplot(3,2,5:6)
plot(wf,20*log10(abs(hf)));
title('H(s) - Banda de Rejeição')
grid on; hold on;
plot([0,lambda_s1_espec,lambda_s1_espec,lambda_s2_espec, lambda_s2_espec,2],[0,0,-As,-As,0,0], 'r')
plot([0,lambda_p1_espec,lambda_p1_espec,lambda_p2_espec, lambda_p2_espec,2],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')
xlim([1 1.25]); ylim([-200 10])
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
subplot(321)
[hz, wz] = freqz(bzn, azn, linspace(0, pi, 1000000));
plot(wz/pi*fa/2, 20*log10(abs(hz)));
xlim([1100 1500]);ylim([-80 10]);
title('H(z)')
grid on
hold on
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec,2000],[0,0,-As,-As,0,0], 'r')
plot([0,fp1_espec,fp1_espec,fp2_espec, fp2_espec,2000],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')

subplot(322)
zplane(bzn, azn);
title('Diagrama de polos e zeros')
subplot(3,2,3)
plot(wz/pi*fa/2, 20*log10(abs(hz)));
title('H(z) - Banda Passagem')
grid on; hold on;
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec,2000],[0,0,-As,-As,0,0], 'r')
plot([0,fp1_espec,fp1_espec,fp2_espec, fp2_espec,2000],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')
xlim([1100 1275]); ylim([-100 3]);

subplot(3,2,4)
plot(wz/pi*fa/2, 20*log10(abs(hz)));
title('H(z) - Banda Passagem')
grid on; hold on;
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec,2000],[0,0,-As,-As,0,0], 'r')
plot([0,fp1_espec,fp1_espec,fp2_espec, fp2_espec,2000],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')
xlim([1275 1450]); ylim([-100 3]);

subplot(3,2,5:6)
plot(wz/pi*fa/2, 20*log10(abs(hz)));
title('H(z) - Banda de Rejeição')
grid on; hold on;
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec,2000],[0,0,-As,-As,0,0], 'r')
plot([0,fp1_espec,fp1_espec,fp2_espec, fp2_espec,2000],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')
xlim([1175 1450]); ylim([-100 3]);

%%
figure(4)
% suptitle(['LP IIR ' num2str(fp_espec) '-' num2str(fs_espec) ' Ordem: ' num2str(n)])

subplot(321)
escala = fa/2;
[hz, wz] = freqz(bzn, azn, linspace(0, pi, 100000));
plot(wz/pi*escala, 20*log10(abs(hz)));
xlim([1100 1500]);ylim([-80 10]);
title('Resposta de Frequencia para H(z)')
grid on
hold on
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec,2000],[0,0,-As,-As,0,0], 'r')
plot([0,fp1_espec,fp1_espec,fp2_espec, fp2_espec,2000],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')

subplot(3,2,[4 6])
zplane(bzn, azn);
title('Diagrama de polos (x) e zeros (o)')

subplot(322)
delta = [1, zeros(1, 10)];
imp = filter(bzn, azn, delta);
stem(imp); grid on;
title('Resposta ao impulso')

subplot(323)
plot(wz/pi*escala, unwrap(angle(hz))/pi); grid on;
title('Resposta de Fase para H(z)')

subplot(325)
grpdelay(bzn, azn)
title('Atraso de grupo para H(z)')
