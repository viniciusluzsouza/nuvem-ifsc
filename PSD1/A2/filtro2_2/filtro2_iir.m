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
G0 = 10^(0/20);
if ExecutarAjuste
% sem ajustes:
%     ordem 13 - bits 16
%     multipliers: 26
%     adders: 25
%     states: 13
    delta = -(2812-2800)/2;
    fp = fp_espec + delta; fs = fs_espec + delta;
    Apk = Ap; Ask = As;
    G0 = 10^(-0.02/20);
    
%     ordem 13 - bits 12
%     multipliers: 26
%     adders: 25
%     states: 13
    G0 = 10^(-0.2/20);
    
%     fp = fp_espec;
%     fs = fs_espec + 20;
%     Apk = Ap - 0.4;
%     Ask = As + 10;
end

fa = fa_espec;  wa = wa_espec;
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
epson = sqrt((10^(0.1*Apk))-1);
n = ceil(log(((10^(0.1*Ask))-1)/epson) / (2*log(Os_espec)));
n = n + 2;
k = 1:n;
pk = (epson^(-1/n))*exp((1j*(2*k+n-1)/(2*n))*pi);
b = 1/epson;
b = b*G0;
a = poly(pk); a = real(a);


%% Primeiro plot
% figure(1)
% subplot(221)
% [h, w] = freqs(b, a, logspace(-2, 1, 1000000));
% semilogx(w, 20*log10(abs(h)))
% title('a) H(p)')
% grid on; hold on;
% plot([10^-2,Os_espec,Os_espec,10^1],[0,0,-As,-As], 'r')
% plot([10^-2,Op_espec,Op_espec],[-Ap,-Ap,-80], 'r')
% xlim([0.5 2]); ylim([-40 5]);
% hold off;
% xlabel('Omega (adm)');
% ylabel('Magnitude (dB)');
% 
% subplot(222)
% zplane(b, a);
% title('b) Diagrama de polos e zeros')
% xlabel('Real');
% ylabel('Imaginario');
% subplot(2,2,3)
% semilogx(w, 20*log10(abs(h)))
% title('c) H(p) - Banda Passagem')
% xlabel('Omega (adm)');
% ylabel('Magnitude (dB)');
% grid on; hold on;
% plot([10^-2,Os_espec,Os_espec,10^1],[0,0,-As,-As], 'r')
% plot([10^-2,Op_espec,Op_espec],[-Ap,-Ap,-80], 'r')
% xlim([0.91 1.1]); ylim([-2 1]);
% 
% 
% subplot(2,2,4)
% semilogx(w, 20*log10(abs(h)))
% title('d) H(p) - Banda de Rejeicao')
% xlabel('Omega (adm)');
% ylabel('Magnitude (dB)');
% grid on; hold on;
% plot([10^-2,Os_espec,Os_espec,10^1],[0,0,-As,-As], 'r')
% plot([10^-2,Op_espec,Op_espec],[-Ap,-Ap,-80], 'r')
% xlim([0.95 1.4]); ylim([-25 -15]);
%% Transformacao de frequencia
% LP para HP
syms p;
Np(p) = poly2sym(b, p);
Dp(p) = poly2sym(a, p);
Hp(p) = Np(p) / Dp(p);
pretty(vpa(collect(Hp(p)), 5))

[Npn, Dpn] = numden(Hp(p));
bp = sym2poly(Npn);
ap = sym2poly(Dpn);
bpn = bp/ap(1);
apn = ap/ap(1);
Hpn(p) = poly2sym(bpn, p)/poly2sym(apn, p);
pretty(vpa(Hpn(p), 5))

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
% figure(2)
% subplot(221)
% [hf, wf] = freqs(bsn, asn, linspace(0, 6, 100000));
% % semilogx(wf, 20*log10(abs(hf)))
% plot(wf,20*log10(abs(hf)));
% xlim([0 5]); ylim([-40 5]);
% title('a) H(s)')
% grid on
% hold on
% plot([0,lambda_s_espec,lambda_s_espec,10],[-As,-As,0,0], 'r')
% plot([lambda_p_espec,lambda_p_espec,10],[-60,-Ap,-Ap], 'r')
% xlabel('Lambda (Hz)');
% ylabel('Magnitude (dB)');
% 
% subplot(222)
% zplane(bsn, asn);
% title('b) Diagrama de polos e zeros')
% xlabel('Real');
% ylabel('Imaginario');
% subplot(2,2,3)
% plot(wf,20*log10(abs(hf)));
% title('c) H(s) - Banda Passagem')
% grid on; hold on;
% plot([0,lambda_s_espec,lambda_s_espec,10],[-As,-As,0,0], 'r')
% plot([lambda_p_espec,lambda_p_espec,10],[-60,-Ap,-Ap], 'r')
% xlim([2.5 4]); ylim([-2 1]);
% xlabel('Lambda (Hz)');
% ylabel('Magnitude (dB)');
% 
% subplot(2,2,4)
% plot(wf,20*log10(abs(hf)));
% title('d) H(s) - Banda de Rejeicao')
% grid on; hold on;
% plot([0,lambda_s_espec,lambda_s_espec,10],[-As,-As,0,0], 'r')
% plot([lambda_p_espec,lambda_p_espec,10],[-60,-Ap,-Ap], 'r')
% xlim([2 3.5]); ylim([-22 -18]);
% xlabel('Lambda (Hz)');
% ylabel('Magnitude (dB)');

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
figure(1)
subplot(2,2,[1 2])
[hz, wz] = freqz(bzn, azn, linspace(0, pi, 100000));
plot(wz/pi*fa/2, 20*log10(abs(hz)));
xlim([0 5000]); ylim([-40 5]);
title('a) H(z)')
grid on
hold on
plot([0,fs_espec,fs_espec,10000],[-As,-As,0,0], 'r')
plot([fp_espec,fp_espec,10000],[-60,-Ap,-Ap], 'r')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');

subplot(2,2,3)
plot(wz/pi*fa/2, 20*log10(abs(hz)));
title('b) H(z) - Banda Passagem')
grid on; hold on;
plot([0,fs_espec,fs_espec,10000],[-As,-As,0,0], 'r')
plot([fp_espec,fp_espec,10000],[-60,-Ap,-Ap], 'r')
xlim([3000 3400]); ylim([-2 1]);
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');

subplot(2,2,4)
plot(wz/pi*fa/2, 20*log10(abs(hz)));
title('c) H(z) - Banda de Rejeicao')
grid on; hold on;
plot([0,fs_espec,fs_espec,10000],[-As,-As,0,0], 'r')
plot([fp_espec,fp_espec,10000],[-60,-Ap,-Ap], 'r')
xlim([2200 3300]); ylim([-22 -18]);
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');

%%
% figure(4)
% % suptitle(['LP IIR ' num2str(fp_espec) '-' num2str(fs_espec) ' Ordem: ' num2str(n)])
% 
% subplot(321)
% escala = fa/2;
% [hz, wz] = freqz(bzn, azn, linspace(0, pi, 10000));
% plot(wz/pi*escala, 20*log10(abs(hz)));
% xlim([1500 5000]); ylim([-40 5]);
% title('a) Resposta em Frequencia para H(z)')
% grid on
% hold on
% plot([0,fs_espec,fs_espec,10000],[-As,-As,0,0], 'r')
% plot([fp_espec,fp_espec,10000],[-60,-Ap,-Ap], 'r')
% xlabel('Frequencia (Hz)');
% ylabel('Magnitude (dB)');
% 
% subplot(3,2,[4 6])
% zplane(bzn, azn);
% title('e) Diagrama de polos (x) e zeros (o)')
% xlabel('Real');
% ylabel('Imaginario');
% 
% subplot(322)
% delta = [1, zeros(1, 38)];
% imp = filter(bzn, azn, delta);
% x_imp = [0:length(delta)-1]/fa*1000;
% stem(x_imp, imp); grid on;
% title('b) Resposta ao impulso')
% xlabel('Amostras (ms)');
% ylabel('Amplitude (adm)');
% 
% subplot(323)
% plot(wz/pi*escala, unwrap(angle(hz))/pi); grid on;
% title('c) Resposta de Fase para H(z)')
% xlabel('Frequencia (Hz)');
% ylabel('Fase (rad)');
% 
% subplot(325)
% [del_y, del_x] = grpdelay(bzn, azn);
% plot(del_x/pi*fa/2, del_y/fa*1000);
% xlabel('Frequencia (Hz)');
% ylabel('Tempo (ms)');
% title('d) Atraso de grupo para H(z)')
