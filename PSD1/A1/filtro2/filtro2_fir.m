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
figure(1)
subplot(221)
title('Resposta de frequencia')
[h, w] = freqz(b, 1, linspace(0,pi,100000));
% plot(w/pi, abs(h)); grid on;
plot(w/pi, 20*log10(abs(h))); grid on;
title('Resposta de frequencia')
ylim([-80 10])
hold on;
plot([pi,wp,wp]/pi,[-Ap,-Ap,-80], '-red')
plot([0,ws/pi,ws/pi,1],[-As,-As,0,0], '-red')

subplot(222)
zplane(b, 1); axis([-2 2 -2 2]);
title('Diagrama de polos e zeros')

subplot(223)
plot(w/pi, 20*log10(abs(h)));
title('Banda Passagem')
grid on; hold on;
plot([pi,wp,wp]/pi,[-Ap,-Ap,-80], '-red')
plot([0,ws/pi,ws/pi,1],[-As,-As,0,0], '-red')
xlim([0.62 0.7]); ylim([-2 1]);

subplot(224)
plot(w/pi, 20*log10(abs(h)));
title('Banda de Rejeição')
grid on; hold on;
plot([pi,wp,wp]/pi,[-Ap,-Ap,-80], '-red')
plot([0,ws/pi,ws/pi,1],[-As,-As,0,0], '-red')
xlim([0.5 0.65]); ylim([-25 -18]);

%%
figure(2)
%suptitle(['HP FIR ' num2str(fs) '-' num2str(fp) ' Ordem: ' num2str(N)])

escala = fa/2;
subplot(3,2,[4 6])
zplane(b, 1);
axis([-2 2 -2 2])
title('Diagrama de polos (x) e zeros (o)')

clear h w
[h, w] = freqz(b, 1, 'whole');

subplot(322)
stem(b), grid on;
title('Resposta ao impulso')

subplot(321)
[h, w] = freqz(b, 1, linspace(0,pi,10000));
% plot(w/pi, abs(h)); grid on;
plot(w/pi*escala, 20*log10(abs(h))); grid on;
hold on;
title('Resposta de Frequencia')
ylim([-80 5])
Amin = 80;
plot([0,fs,fs,fa/2],[-As,-As,0,0], 'r')
plot([fa/2,fp,fp,],[-Ap,-Ap,-80], 'r')
xlim([0 fa/2])

subplot(323)
plot(w/pi*escala, unwrap(angle(h))/pi); grid on;
title('Resposta de Fase')

subplot(325)
grpdelay(b, 1)
title('Atraso de grupo')
