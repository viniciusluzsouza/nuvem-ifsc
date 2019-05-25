close all;
clear all;
clc;

%% Projeto do filtro Chebyshev

As = 40;
Ap = 3.01;
wp = 1000;
ws = 2000;
Ws = ws/wp;

% para Ap = 3 dB E = 1
% cosh ^-1 = acosh
E = sqrt(10^(0.1*Ap)-1);
n = (acosh(sqrt((10^(0.1*As)-1)/(10^(0.1*Ap)-1)))/acosh(Ws))
n = ceil(n);

for n = 2:10;

fi2 = 1/n * asinh(1/E);
k = 1:n;
tk = (2*k-1)*pi/(2*n);% teta k
pk = -sinh(fi2)*sin(tk) + 1j*cosh(fi2)*cos(tk)

d0 = real(prod(-pk)); % primeira maneira de pegar d0
dp = real(poly(pk));
d02 = dp(end);  % segunda maneira de pegar d0

if mod(n, 2) == 0
    H0 = d0*sqrt(1/(1+E^2)); % par
else
    H0 = d0; % impar
end

[h, w] = freqs(H0, dp, logspace(-2, 2, 1000));
semilogx(w, 20*log10(abs(h)))
grid on;
hold on;
end

%%
syms p
Dp(p) = poly2sym(dp, p);
Hp(p) = H0 / Dp(p);
pretty(vpa(collect(Hp(p)), 5))

%%
freqs(d0, dp)

%%
plot(real(pk), imag(pk), 'x') % nao da pra ver muito bem, vamos transformar em poly e usar zplane

%%
zplane(1, poly(pk));

