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
Apk = 0;
G0 = 10^(GdB/20);
if ExecutarAjuste
    Apk = Ap - 0.1;
    delta_fp2 = 0;
    G0 = 10^(-(0.1/2)/20);
end


%% Chebyshev I
n = cheb1ord(Op, Os, Apk, As,'s');
[b, a] = cheby1(n,Apk, Op, 's');
b = b*G0;

%% Primeiro plot
% figure(1)
% subplot(221)
% [h, w] = freqs(b, a, logspace(-2, 1, 1000000));
% semilogx(w, 20*log10(abs(h)))
% title('a) H(p)')
% grid on; hold on;
% plot([10^-2,Os_espec,Os_espec,10^1],[0,0,-As,-As], 'r')
% plot([10^-2,Op_espec,Op_espec],[-Ap,-Ap,-80], 'r')
% ylim([-80 5]);
% xlabel('Omega (adm)');
% ylabel('Magnitude (dB)');
% hold off;
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
% subplot(2,2,4)
% semilogx(w, 20*log10(abs(h)))
% title('d) H(p) - Banda Rejeicao')
% xlabel('Omega (adm)');
% ylabel('Magnitude (dB)');
% grid on; hold on;
% plot([10^-2,Os_espec,Os_espec,10^1],[0,0,-As,-As], 'r')
% plot([10^-2,Op_espec,Op_espec],[-Ap,-Ap,-80], 'r')
% xlim([0.91 3]); ylim([-65 -55]);


%% Transformacao de frequencia
% LP para BP
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
% figure(2)
% subplot(321)
% [hf, wf] = freqs(bsn, asn, linspace(0, 6, 100000));
% % semilogx(wf, 20*log10(abs(hf)))
% plot(wf,20*log10(abs(hf)));
% xlim([0.9 1.25]); ylim([-80 5])
% title('a) H(s)')
% grid on
% hold on
% plot([0,lambda_s1_espec,lambda_s1_espec,lambda_s2_espec, lambda_s2_espec,2],[0,0,-As,-As,0,0], 'r')
% plot([0,lambda_p1_espec,lambda_p1_espec,lambda_p2_espec, lambda_p2_espec,2],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')
% xlabel('Lambda (Hz)');
% ylabel('Magnitude (dB)');
% 
% subplot(322)
% zplane(bsn, asn);
% title('b) Diagrama de polos e zeros')
% xlabel('Real');
% ylabel('Imaginario');
% subplot(3,2,4)
% plot(wf,20*log10(abs(hf)));
% title('d) H(s) - Banda Passagem')
% grid on; hold on;
% plot([0,lambda_s1_espec,lambda_s1_espec,lambda_s2_espec, lambda_s2_espec,2],[0,0,-As,-As,0,0], 'r')
% plot([0,lambda_p1_espec,lambda_p1_espec,lambda_p2_espec, lambda_p2_espec,2],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')
% xlim([1.225 1.226]); ylim([-1 1]);
% 
% subplot(3,2,3)
% plot(wf,20*log10(abs(hf)));
% title('c) H(s) - Banda Passagem')
% grid on; hold on;
% plot([0,lambda_s1_espec,lambda_s1_espec,lambda_s2_espec, lambda_s2_espec,2],[0,0,-As,-As,0,0], 'r')
% plot([0,lambda_p1_espec,lambda_p1_espec,lambda_p2_espec, lambda_p2_espec,2],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')
% xlim([1.015 1.025]); ylim([-1 1]);
% xlabel('Lambda (Hz)');
% ylabel('Magnitude (dB)');
% 
% 
% subplot(3,2,5:6)
% plot(wf,20*log10(abs(hf)));
% title('e) H(s) - Banda de Rejeicao')
% grid on; hold on;
% plot([0,lambda_s1_espec,lambda_s1_espec,lambda_s2_espec, lambda_s2_espec,2],[0,0,-As,-As,0,0], 'r')
% plot([0,lambda_p1_espec,lambda_p1_espec,lambda_p2_espec, lambda_p2_espec,2],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')
% xlim([1.05 1.2]); ylim([-65 -55])
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
subplot(3,2,[1 2])
[hz, wz] = freqz(bzn, azn, linspace(0, pi, 1000000));
plot(wz/pi*fa/2, 20*log10(abs(hz)));
xlim([1100 1500]);ylim([-80 5]);
title('a) H(z)')
grid on
hold on
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec,2000],[0,0,-As,-As,0,0], 'r')
plot([0,fp1_espec,fp1_espec,fp2_espec, fp2_espec,2000],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');

subplot(3,2,3)
plot(wz/pi*fa/2, 20*log10(abs(hz)));
title('b) H(z) - Banda Passagem')
grid on; hold on;
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec,2000],[0,0,-As,-As,0,0], 'r')
plot([0,fp1_espec,fp1_espec,fp2_espec, fp2_espec,2000],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')
xlim([1195 1205]); ylim([-2 2]);
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');

subplot(3,2,4)
plot(wz/pi*fa/2, 20*log10(abs(hz)));
title('c) H(z) - Banda Passagem')
grid on; hold on;
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec,2000],[0,0,-As,-As,0,0], 'r')
plot([0,fp1_espec,fp1_espec,fp2_espec, fp2_espec,2000],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')
xlim([1395 1405]); ylim([-2 2]);
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');

subplot(3,2,5:6)
plot(wz/pi*fa/2, 20*log10(abs(hz)));
title('d) H(z) - Banda de Rejeicao')
grid on; hold on;
plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec,2000],[0,0,-As,-As,0,0], 'r')
plot([0,fp1_espec,fp1_espec,fp2_espec, fp2_espec,2000],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')
xlim([1225 1325]); ylim([-65 -55]);
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');

%%
% figure(4)
% % suptitle(['LP IIR ' num2str(fp_espec) '-' num2str(fs_espec) ' Ordem: ' num2str(n)])
% 
% subplot(321)
% escala = fa/2;
% [hz, wz] = freqz(bzn, azn, linspace(0, pi, 100000));
% plot(wz/pi*escala, 20*log10(abs(hz)));
% xlim([1100 1500]);ylim([-80 5]);
% title('a) Resposta em Frequencia para H(z)')
% grid on
% hold on
% plot([0,fs1_espec,fs1_espec,fs2_espec, fs2_espec,2000],[0,0,-As,-As,0,0], 'r')
% plot([0,fp1_espec,fp1_espec,fp2_espec, fp2_espec,2000],-[Ap,Ap,As+10,As+10,Ap,Ap], 'g')
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
% delta = [1, zeros(1, 35)];
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
