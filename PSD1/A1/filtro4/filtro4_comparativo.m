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

%% Inicio PLOT (filtro IIR)
figure(1)
subplot(321)
escala = fa/2;
[hz, wz] = freqz(bzn, azn, linspace(0, pi, 100000));
plot(wz/pi*escala, 20*log10(abs(hz)));
xlim([1100 1500]);ylim([-80 10]);
title('IIR - Resposta em Frequencia')
grid on
hold on
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec,2000],[0,0,-As,-As,0,0], 'r')
plot([0,fp1_espec,fp1_espec,fp2_espec, fp2_espec,2000],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')

subplot(323)
plot(wz/pi*escala, unwrap(angle(hz))/pi); grid on;
title('IIR - Resposta de Fase')

subplot(325)
zplane(bzn, azn);
title('IIR - Diagrama de polos e zeros')

%% Calculos filtro FIR

% Projeto filtro 4 FIR PM
% BP - (fa = 8000 Hz, f1 = 1200 Hz; f2 = 1250 Hz, f3 = 1300 Hz;
% f4 = 1400 Hz, Ap = 0.5 dB, As = 60 dB, GdB = 0 dB)

clear all;

ExecutarAjuste = 1;

%% Especificacoes
Ap = 0.5; As = 60; GdB = 0;

fa = 8000;
fp1 = 1200; fp2 = 1400;
fs1 = 1250; fs2 = 1300;

fcuts = [fp1 fs1 fs2 fp2];
w = fcuts/fa*(2*pi);
wp1 = w(1)/pi; ws1 = w(2)/pi; ws2 = w(3)/pi; wp2 = w(4)/pi;

mags = [1 0 1];
devs_As = 10^(-As/20);
devs_Ap = 1-10^(-Ap/20);
devs = [devs_Ap devs_As devs_Ap];
G0 = GdB;

if ExecutarAjuste
    G0 = G0 - 0.23;
end

% calculo da ordem com firpmord
[n,f0,a0,w0] = firpmord(fcuts,mags,devs,fa);

% calculo algoritmo PM
h_pm = firpm(n,f0,a0,w0);
h_pm = h_pm*10^(G0/20);

%%
subplot(322)
escala = fa/2;
[h, w] = freqz(h_pm, 1, linspace(0,pi,100000));
% plot(w/pi, abs(h)); grid on;
plot(w*fa/2/pi,20*log10(abs(h))); grid on;
title('FIR - Resposta de Frequencia')
xlim([1000 1500]); ylim([-80 10]);
grid on; hold on;
Amin = 80;
plot([0, ws1, ws1, ws2, ws2, 1]*fa/2, [0, 0, -As, -As, 0,0], '-m')
plot([0, wp1, wp1, wp2, wp2, 1]*fa/2, [-Ap, -Ap, -120, -120, -Ap, -Ap], '-r')
xlim([1100 1500])

subplot(324)
plot(w/pi*escala, unwrap(angle(h))/pi); grid on;
title('FIR - Resposta de Fase')

subplot(326)
zplane(h_pm, 1);
axis([-2 2 -2 2])
title('FIR - Diagrama de polos e zeros')

