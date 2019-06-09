close all;
clear all;
clc;

ExecutarAjuste = 1;

%% Especificacoes
Ap = 0.5; As = 20; GdB = 0;

fa_espec = 10000; fs_espec = 2800; fp_espec = 3200;
wa_espec = 2*pi*fa_espec;
wp_espec = 2*pi*fp_espec; ws_espec = 2*pi*fs_espec;
Wp_espec = 1; Ws_espec = wp_espec/ws_espec;
tetha_s_espec = ws_espec/(wa_espec/2);
tetha_p_espec = wp_espec/(wa_espec/2);
lambda_s_espec = 2*tan(tetha_s_espec * pi/2);
lambda_p_espec = 2*tan(tetha_p_espec * pi/2);
Os_espec = lambda_p_espec/lambda_s_espec;
Op_espec = 1;

% Ajustes
delta = 0;
if ExecutarAjuste
    delta = -(2812-2800)/2;
end

fa = fa_espec;  wa = wa_espec;
fp = fp_espec + delta; fs = fs_espec + delta;
wp = 2*pi*fp; ws = 2*pi*fs;
Wp = wp_espec; Ws = wp/ws;
tetha_s = ws/(wa/2);
tetha_p = wp/(wa/2);
lambda_s = 2*tan(tetha_s * pi/2);
lambda_p = 2*tan(tetha_p * pi/2);
Os = lambda_p/lambda_s;
Op = 1;

%% IIR Butterworth
% [n1, Wn1] = buttord(Op, Os, Ap, As,'s');
% [b1, a1] = butter(n1, Wn1, 's');

% calculo na mao
epson = sqrt((10^(0.1*Ap))-1);
n = ceil(log(((10^(0.1*As))-1)/epson) / (2*log(Os_espec)));
n = n + 2;
k = 1:n;
pk = (epson^(-1/n))*exp((1j*(2*k+n-1)/(2*n))*pi);
b = 1/epson;
a = poly(pk); a = real(a);


%% Primeiro plot
figure(1)
subplot(221)
[h, w] = freqs(b, a, logspace(-2, 1, 1000000));
semilogx(w, 20*log10(abs(h)))
title('H(p)')
grid on; hold on;
plot([10^-2,Os_espec,Os_espec,10^1],[0,0,-As,-As], 'r')
plot([10^-2,Op_espec,Op_espec],[-Ap,-Ap,-80], 'r')
xlim([0.5 2]); ylim([-30 5]);
hold off;

subplot(222)
zplane(b, a);
title('Diagrama de polos e zeros')
subplot(2,2,[3 4])
semilogx(w, 20*log10(abs(h)))
title('H(p) - Banda Passagem')
grid on; hold on;
plot([10^-2,Os_espec,Os_espec,10^1],[0,0,-As,-As], 'r')
plot([10^-2,Op_espec,Op_espec],[-Ap,-Ap,-80], 'r')
xlim([0.91 1.1]); ylim([-2 1]);

%% Transformacao de frequencia
% LP para HP
syms p;
Np(p) = poly2sym(b, p);
Dp(p) = poly2sym(a, p);
Hp(p) = Np(p) / Dp(p);
pretty(vpa(collect(Hp(p)), 5))

%% Normalizando de acordo com p^n
syms s;
Hs(s) = collect(subs(Hp(p), lambda_p/s));
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
subplot(221)
[hf, wf] = freqs(bsn, asn, linspace(0, 6, 100000));
% semilogx(wf, 20*log10(abs(hf)))
plot(wf,20*log10(abs(hf)));
xlim([0 5]); ylim([-30 5]);
title('H(s)')
grid on
hold on
plot([0,lambda_s_espec,lambda_s_espec,10],[-As,-As,0,0], 'r')
plot([lambda_p_espec,lambda_p_espec,10],[-60,-Ap,-Ap], 'r')

subplot(222)
zplane(bsn, asn);
title('Diagrama de polos e zeros')
subplot(2,2,[3 4])
plot(wf,20*log10(abs(hf)));
title('H(s) - Banda Passagem')
grid on; hold on;
plot([0,lambda_s_espec,lambda_s_espec,10],[-As,-As,0,0], 'r')
plot([lambda_p_espec,lambda_p_espec,10],[-60,-Ap,-Ap], 'r')
xlim([2.5 4]); ylim([-2 1]);


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
subplot(221)
[hz, wz] = freqz(bzn, azn, linspace(0, pi, 100000));
plot(wz/pi*fa/2, 20*log10(abs(hz)));
xlim([1500 5000]); ylim([-30 5]);
title('H(z)')
grid on
hold on
plot([0,fs_espec,fs_espec,10000],[-As,-As,0,0], 'r')
plot([fp_espec,fp_espec,10000],[-60,-Ap,-Ap], 'r')

subplot(222)
zplane(bzn, azn);
title('Diagrama de polos e zeros')
subplot(2,2,[3 4])
plot(wz/pi*fa/2, 20*log10(abs(hz)));
title('H(z) - Banda Passagem')
grid on; hold on;
plot([0,fs_espec,fs_espec,10000],[-As,-As,0,0], 'r')
plot([fp_espec,fp_espec,10000],[-60,-Ap,-Ap], 'r')
xlim([3000 3400]); ylim([-2 1]);

%%
figure(4)
% suptitle(['LP IIR ' num2str(fp_espec) '-' num2str(fs_espec) ' Ordem: ' num2str(n)])

subplot(321)
[hz, wz] = freqz(bzn, azn, linspace(0, pi, 10000));
plot(wz/pi*fa/2, 20*log10(abs(hz)));
xlim([1500 5000]); ylim([-30 5]);
title('Resposta de Magnitude para H(z)')
grid on
hold on
plot([0,fs_espec,fs_espec,10000],[-As,-As,0,0], 'r')
plot([fp_espec,fp_espec,10000],[-60,-Ap,-Ap], 'r')

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