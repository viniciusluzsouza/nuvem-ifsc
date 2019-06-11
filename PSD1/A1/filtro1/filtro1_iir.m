% Projeto filtro 1
% LP - (fa = 10000 Hz, f1 = 2800 Hz; f2 = 3200 Hz, Ap = 1 dB, As = 40 dB, GdB = 0 dB)

close all;
clear all;
clc;

ExecutarAjuste = 1;

%% Especificacoes
Ap = 1; As = 40; GdB = 0;

fa_espec = 10000; fp_espec = 2800; fs_espec = 3200;
wa_espec = 2*pi*fa_espec;
wp_espec = 2*pi*fp_espec; ws_espec = 2*pi*fs_espec;
Wp_espec = 1; Ws_espec = ws_espec/wp_espec;
tetha_s_espec = ws_espec/(wa_espec/2);
tetha_p_espec = wp_espec/(wa_espec/2);
lambda_s_espec = 2*tan(tetha_s_espec * pi/2);
lambda_p_espec = 2*tan(tetha_p_espec * pi/2);
Os_espec = lambda_s_espec/lambda_p_espec;
Op_espec = 1;

% Ajustes
if ExecutarAjuste
    delta = (3200-3102)/2;
else
    delta = 0;
end

fa = fa_espec;  wa = wa_espec;
fp = fp_espec + delta; fs = fs_espec + delta;
wp = 2*pi*fp; ws = 2*pi*fs;
Wp = wp_espec; Ws = ws/wp;
tetha_s = ws/(wa/2);
tetha_p = wp/(wa/2);
lambda_s = 2*tan(tetha_s * pi/2);
lambda_p = 2*tan(tetha_p * pi/2);
Os = lambda_s/lambda_p;
Op = 1;

%% IIR Eliptico
[n, Wn] = ellipord(Op, Os, Ap, As,'s');
% n = n - 1;
[b,a] = ellip(n,Ap,As, Wn, 's');

%% Primeiro plot
figure(1)
% suptitle('Prot??tipo Passa Baixa')
subplot(221)
[h, w] = freqs(b, a, logspace(-2, 1, 1000000));
semilogx(w, 20*log10(abs(h)))
title('H(p)')
grid on; hold on;
plot([10^-2,Os_espec,Os_espec,10^1],[0,0,-As,-As], 'r')
plot([10^-2,Op_espec,Op_espec],[-Ap,-Ap,-80], 'r')
xlim([0.5 2]); ylim([-60 10]);
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
xlim([0.6 1.33]); ylim([-2 1]);

subplot(2,2,4)
semilogx(w, 20*log10(abs(h)))
title('H(p) - Banda Rejeição')
grid on; hold on;

plot([10^-2,Os_espec,Os_espec,10^1],[0,0,-As,-As], 'r')
plot([10^-2,Op_espec,Op_espec],[-Ap,-Ap,-80], 'r')
xlim([0.8 2]); ylim([-50 -30]);

% eixos = axes;
% titulo = title('Prototipo LP', 'FontSize', 14, 'Color', [0.6350 0.0780 0.1840]);
% eixos.Visible = 'off';
% titulo.Visible = 'on';

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
% suptitle('Transforma????o LP -> LP')
subplot(221)
[hf, wf] = freqs(bsn, asn, linspace(0, 6, 100000));
% semilogx(wf, 20*log10(abs(hf)))
plot(wf,20*log10(abs(hf)));
ylim([-80 10])
title('H(s)')
grid on
hold on
plot([0,lambda_s_espec,lambda_s_espec,(fa/2/1000)+1],[0,0,-As,-As], 'r')
plot([0,lambda_p_espec,lambda_p_espec],[-Ap,-Ap,-80], 'r')

subplot(222)
zplane(bsn, asn);
title('Diagrama de polos e zeros')
subplot(2,2,3)
plot(wf,20*log10(abs(hf)));
title('H(s) - Banda Passagem')
grid on; hold on;
plot([0,lambda_s_espec,lambda_s_espec,(fa/2/1000)+1],[0,0,-As,-As], 'r')
plot([0,lambda_p_espec,lambda_p_espec],[-Ap,-Ap,-80], 'r')
xlim([1.6 3.3]); ylim([-2 1]);

subplot(2,2,4)
plot(wf,20*log10(abs(hf)));
title('H(s) - Banda de Rejeição')
grid on; hold on;
plot([0,lambda_s_espec,lambda_s_espec,(fa/2/1000)+1],[0,0,-As,-As], 'r')
plot([0,lambda_p_espec,lambda_p_espec],[-Ap,-Ap,-80], 'r')
xlim([2.2 3.5]); ylim([-45 -35]);

% eixos = axes;
% titulo = title('Transformacao LP -> LP', 'FontSize', 14, 'Color', [0.6350 0.0780 0.1840]);
% eixos.Visible = 'off';
% titulo.Visible = 'on';

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
% suptitle('Transforma????o anal??gico -> digital')
subplot(221)
[hz, wz] = freqz(bzn, azn, linspace(0, pi, 100000));
plot(wz/pi*fa/2, 20*log10(abs(hz)));
xlim([0 fa/2]);ylim([-80 10])
title('H(z)')
grid on
hold on
plot([0,fs_espec,fs_espec,(fa/2)+1000],[0,0,-As,-As], 'r')
plot([0,fp_espec,fp_espec,],[-Ap,-Ap,-80], 'r')

subplot(222)
zplane(bzn, azn);
title('Diagrama de polos e zeros')
subplot(2,2,3)
plot(wz/pi*fa/2, 20*log10(abs(hz)));
title('H(z) - Banda Passagem')
grid on; hold on;
plot([0,fs_espec,fs_espec,(fa/2)+1000],[0,0,-As,-As], 'r')
plot([0,fp_espec,fp_espec,],[-Ap,-Ap,-80], 'r')
xlim([2000 3500]); ylim([-2 1]);

subplot(2,2,4)
plot(wz/pi*fa/2, 20*log10(abs(hz)));
title('H(z) - Banda de Rejeição')
grid on; hold on;
plot([0,fs_espec,fs_espec,(fa/2)+1000],[0,0,-As,-As], 'r')
plot([0,fp_espec,fp_espec,],[-Ap,-Ap,-80], 'r')
xlim([2600 3500]); ylim([-45 -35]);

% eixos = axes;
% titulo = title('Transformacao Analogico -> Digital', 'FontSize', 14, 'Color', [0.6350 0.0780 0.1840]);
% eixos.Visible = 'off';
% titulo.Visible = 'on';

%%
figure(4)
% suptitle(['LP IIR ' num2str(fp_espec) '-' num2str(fs_espec) ' Ordem: ' num2str(n)])
escala = fa/2;
subplot(321)
[hz, wz] = freqz(bzn, azn, linspace(0, pi, 10000));
plot(wz/pi*escala, 20*log10(abs(hz)));
xlim([0 fa/2]);ylim([-80 10])
title('Resposta de Frequência para H(z)')
grid on
hold on
plot([0,fs_espec,fs_espec,(fa/2)+1000],[0,0,-As,-As], 'r')
plot([0,fp_espec,fp_espec,],[-Ap,-Ap,-80], 'r')

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

% eixos = axes;
% texto = ['LP IIR ' num2str(fp_espec) '-' num2str(fs_espec) ' Ordem: ' num2str(n)];
% titulo = title(texto, 'FontSize', 14, 'Color', [0.6350 0.0780 0.1840]);
% eixos.Visible = 'off';
% titulo.Visible = 'on';
