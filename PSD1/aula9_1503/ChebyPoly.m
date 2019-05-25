c0 = 1;
c1 = [1 0];
c2 = [2 0 -1];
c3 = [4 0 -3 0];
c4 = [8 0 -8 0 1];
c5 = [16 0 -20 0 5 0];

p2 = roots(c2); % polos de c2
p3 = roots(c3); % polos de c3
p4 = roots(c4); % polos de c4
p5 = roots(c5); % polos de c5

c0_2 = 1; % c0 ao quadrado
c1_2 = [1 0 0]; % c1 ao quadrado
c2_2 = conv(c2,c2); % c2 ao quadrado
c3_2 = conv(c3, c3); % c3 ao quadrado
c4_2 = conv(c4, c4); % c4 ao quadrado
c5_2 = conv(c5, c5); % c5 ao quadrado

% para Ap = 3dB, E = 1
E = 1; % epson igual a 1

% para n par
H0p = 1/(E^2 + 1)
% h2w = H0i^2/(1 + E^2*c2_2); % nao da pra fazer desse jeito
% h2w = H0i^2/(1 + E^2*c4_2);

% n = 2
W = [0:0.01:10];
H2w = 1^2./(1 + (4*W.^4 - 4*W.^2 + 1));
% semilogx(W, H2w); grid on
semilogx(W, 10*log10(H2w)); grid on % plot em db eixo y
hold on

% n = 3
H2w = 1^2./(1 + (16*W.^6 - 24*W.^4 + 9*W.^2));
semilogx(W, 10*log10(H2w)); grid on % plot em db eixo y

% n = 4
H2w = 1^2./(1 + (64*W.^8 - 128*W.^6 + 80*W.^4 - 16*W.^2 + 1));
semilogx(W, 10*log10(H2w)); grid on % plot em db eixo y

% n = 5
H2w = 1^2./(1 + (256*W.^10 - 640*W.^8 + 560*W.^6 - 200*W.^4 + 25*W.^2));
semilogx(W, 10*log10(H2w)); grid on % plot em db eixo y

% para n impar
H0i = 1
% h2w = H0i^2/(1 + E^2*c1_2);
% h2w = H0i^2/(1 + E^2*c3_2);
% h2w = H0i^2/(1 + E^2*c5_2);

%% Projeto do filtro Chebyshev

As = 40;
Ap = 3;
wp = 1000;
ws = 2000;
Ws = ws/wp;

% para Ap = 3 dB E = 1
% cosh ^-1 = acosh
E = sqrt(10^(0.1*Ap)-1);
n = (acosh(sqrt((10^(0.1*As)-1)/(10^(0.1*Ap)-1)))/acosh(Ws))
n = ceil(n);

fi2 = 1/n * asinh(1/E);
k = 1:n;
tk = (2*k-1)*pi/(2*n);% teta k
pk = -sinh(fi2)*sin(tk) + 1j*cosh(fi2)*cos(tk)
plot(real(pk), imag(pk), 'x') % nao da pra ver muito bem, vamos transformar em poly e usar zplane

zplane(1, poly(pk));