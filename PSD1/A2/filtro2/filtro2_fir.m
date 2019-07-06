% Projeto filtro 1
% LP - (fa = 10000 Hz, f1 = 2800 Hz; f2 = 3200 Hz, Ap = 0.5 dB, As = 20 dB, GdB = 0 dB)

close all;
clear all;
clc;

ExecutarAjuste = 1;

%% Especificacoes
fa = 10000; fs = 2800; fp = 3200;
Ap = 0.5; As = 20; GdB = 0;
wp = fp/fa*(2*pi); ws = fs/fa*(2*pi);

spf = 1;
Ta = 1/fa;

%

wc1 = sqrt(wp*ws); % media geometrica
Dw1 = wp - ws;
G0 = GdB;

%% Projeto inicial
Dw = Dw1;
wc = wc1;
Ask = As;
if ExecutarAjuste
   Ask = Ask + 9; % Ajuste BP
%     ordem 38 - bits 10
%     multipliers: 20
%     adders: 39
%     states: 38
   G0 = 0.01;

%     ordem 40 - bits 9
%     multipliers: 20
%     adders: 39
%     states: 38
   G0 = G0 + 0.039;
   Ask = Ask + 1;

%     ordem 42 - bits 8
%     multipliers: 22
%     adders: 43
%     states: 42
   G0 = G0 - 0.03;
   Ask = Ask + 1;
   
%    Ask = Ask + 15;
end

betha = 0.5842*(Ask-21)^0.4 + 0.07886*(Ask-21);
M1 = ceil((Ask - 8)/(2.285*Dw)+1);
M = M1;
% M = 20;
% G0 = -5.5 + 1;

if ExecutarAjuste
    % primeiro ajuste
    G0 = G0 + 0.295; % db

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
figure(1)
escala = fa/2;
subplot(2,2,[1 2])
[h, w] = freqz(b, 1, linspace(0,pi,100000));
% plot(w/pi, abs(h)); grid on;
plot(w/pi*escala, 20*log10(abs(h))); grid on;
title('a) Resposta em frequencia')
ylim([-40 5])
hold on;
plot([pi,wp,wp]/pi*escala,[-Ap,-Ap,-80], '-red')
plot([0,ws/pi,ws/pi,1]*escala,[-As,-As,0,0], '-red')
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');

subplot(223)
plot(w/pi*escala, 20*log10(abs(h)));
title('b) Banda Passagem')
grid on; hold on;
plot([pi,wp,wp]/pi*escala,[-Ap,-Ap,-80], '-red')
plot([0,ws/pi,ws/pi,1]*escala,[-As,-As,0,0], '-red')
xlim([0.62 0.7]*escala); ylim([-2 1]);
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');

subplot(224)
plot(w/pi*escala, 20*log10(abs(h)));
title('c) Banda de Rejeicao')
grid on; hold on;
plot([pi,wp,wp]/pi*escala,[-Ap,-Ap,-80], '-red')
plot([0,ws/pi,ws/pi,1]*escala,[-As,-As,0,0], '-red')
xlim([0.5 0.65]*escala); ylim([-25 -18]);
xlabel('Frequencia (Hz)');
ylabel('Magnitude (dB)');

figure(2)
subplot(2,2,[1 3])
zplane(b, 1);
title('a) Diagrama de polos (x) e zeros (o) - Referencia')
xlabel('Real');
ylabel('Imaginario');
%%
% figure(2)
% %suptitle(['HP FIR ' num2str(fs) '-' num2str(fp) ' Ordem: ' num2str(N)])
% 
% escala = fa/2;
% subplot(3,2,[4 6])
% zplane(b, 1);
% axis([-2 2 -2 2])
% title('e) Diagrama de polos (x) e zeros (o)')
% xlabel('Real');
% ylabel('Imaginario');
% 
% clear h w
% [h, w] = freqz(b, 1, 'whole');
% 
% subplot(322)
% x_imp = [0:length(b)-1]/fa*1000;
% stem(x_imp, b); grid on;
% title('Resposta ao impulso')
% xlabel('Amostras (ms)');
% ylabel('Amplitude (adm)');
% 
% subplot(321)
% [h, w] = freqz(b, 1, linspace(0,pi,10000));
% % plot(w/pi, abs(h)); grid on;
% plot(w/pi*escala, 20*log10(abs(h))); grid on;
% hold on;
% title('a) Resposta em Frequencia')
% ylim([-40 5])
% Amin = 80;
% plot([0,fs,fs,fa/2],[-As,-As,0,0], 'r')
% plot([fa/2,fp,fp,],[-Ap,-Ap,-80], 'r')
% xlim([0 fa/2])
% xlabel('Frequencia (Hz)');
% ylabel('Magnitude (dB)');
% 
% subplot(323)
% plot(w/pi*escala, unwrap(angle(h))/pi); grid on;
% title('c) Resposta de Fase')
% xlabel('Frequencia (Hz)');
% ylabel('Fase (rad)');
% 
% subplot(325)
% [del_y, del_x] = grpdelay(b, 1);
% plot(del_x/pi*fa/2, del_y/fa*1000);
% title('d) Atraso de grupo')
% xlabel('Frequencia (Hz)');
% ylabel('Tempo (ms)');

%%
syms z
H(z) = poly2sym(b, z);
pretty(vpa(collect(H(z)), 3))