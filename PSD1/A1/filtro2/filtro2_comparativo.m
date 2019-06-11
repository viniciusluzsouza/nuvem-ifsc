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
[hz, wz] = freqz(bzn, azn, linspace(0, pi, 10000));
plot(wz/pi*escala, 20*log10(abs(hz)));
xlim([1500 5000]); ylim([-30 5]);
title('IIR - Resposta em Frequencia')
grid on
hold on
plot([0,fs_espec,fs_espec,10000],[-As,-As,0,0], 'r')
plot([fp_espec,fp_espec,10000],[-60,-Ap,-Ap], 'r')

subplot(323)
plot(wz/pi*escala, unwrap(angle(hz))/pi); grid on;
title('IIR - Resposta de Fase')

subplot(325)
zplane(bzn, azn);
title('IIR - Diagrama de polos e zeros')

%% Calculos filtro FIR

% Projeto filtro 1
% LP - (fa = 10000 Hz, f1 = 2800 Hz; f2 = 3200 Hz, Ap = 0.5 dB, As = 20 dB, GdB = 0 dB)

clear all;

ExecutarAjuste = 1;

%% Especificacoes
fa = 10000; fs = 2800; fp = 3200;
Ap = 0.5; As = 20; GdB = 0;
wp = fp/fa*(2*pi); ws = fs/fa*(2*pi);

wc1 = sqrt(wp*ws); % media geometrica
Dw1 = wp - ws;
G0 = GdB;

%% Projeto inicial
Dw = Dw1;
wc = wc1;
Ask = As;
if ExecutarAjuste
    Ask = Ask + 9; % Ajuste BP
end

betha = 0.5842*(Ask-21)^0.4 + 0.07886*(Ask-21);
M1 = ceil((Ask - 8)/(2.285*Dw)+1);
M = M1;
% M = 20;
% G0 = -5.5 + 1;

if ExecutarAjuste
    % primeiro ajuste
    G0 = 0.295; % db

    % segundo ajuste M (n/2)
    wp2 = 0.6196*pi; ws2 = 0.5813*pi;
    Dw2 = wp2 -ws2;
    M2 = ceil(M1*Dw2/Dw1); % nova ordem do filtro 2*M2
    M = M2;

    % ajuste deslocamento
    wc2 = wc1 - ((0.0037+0.0013)/2)*pi;
    wc = wc2;
end


N = 2*M+1;
betha = 0.5842*(Ask-21)^0.4 + 0.07886*(Ask-21);
wk = kaiser(N, betha)';
% wk = chebwin(N, As)';
% wk = gausswin(N, 1/As)';
% wk = tukeywin(N)';
% wk = taylorwin(N)';

k = 1:M;
% HP
bi = -sin(wc*k)./(pi*k);
b0 = 1-wc/pi;
b = [flip(bi) b0 bi];

b = b.*wk*10^(-G0/20); % janela de keiser

%%
subplot(322)
escala = fa/2;
[h, w] = freqz(b, 1, linspace(0,pi,10000));
% plot(w/pi, abs(h)); grid on;
plot(w/pi*escala, 20*log10(abs(h))); grid on;
hold on;
title('FIR - Resposta em Frequencia')
ylim([-80 5])
Amin = 80;
plot([0,fs,fs,fa/2],[-As,-As,0,0], 'r')
plot([fa/2,fp,fp,],[-Ap,-Ap,-80], 'r')
xlim([0 fa/2])

subplot(324)
plot(w/pi*escala, unwrap(angle(h))/pi); grid on;
title('FIR - Resposta de Fase')

subplot(326)
zplane(b, 1);
axis([-2 2 -2 2])
title('FIR - Diagrama de polos e zeros')