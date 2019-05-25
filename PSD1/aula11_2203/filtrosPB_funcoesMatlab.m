%% Projeto de filtro passa-baixas usando fun??es do Matlab  
%% Especifica??es do filtro 
wp =1000; ws = 2000; Ap = 3; As = 40; G0= 0; Wp = 1; Ws = ws/wp;  %% LP
wp =1000; ws = 500; Ap = 3; As = 40; G0= 0; Wp = 1; Ws = ws/wp;  %% HP


% Para analisar o filtro projetado, use fvtool(b,a) para observar plano s, resposta em magnitude, fase e atraso de grupo
 
%% Butterworth
[n1,Wn] = buttord(Wp, Ws, Ap, As,'s')
[b1,a1] = butter(n1,Wn, 's');
 
%% Chebyshev I
n2 = cheb1ord(Wp, Ws, Ap, As,'s')
[b2,a2] = cheby1(n2,Ap, Wp, 's');
 
%% Chebyshev II
n3 = cheb2ord(Wp, Ws, Ap, As,'s')
[b3,a3] = cheby2(n3,As, Ws, 's');
 
%% Elliptic - Cauer
[n4, Wn] = ellipord(Wp, Ws, Ap, As,'s')
[b4,a4] = ellip(n4,Ap,As, Wn, 's');

%% plotando ..
figure(1)
subplot(221)
[h1, w] = freqs(b1, a1, logspace(-2, 1, 10000));
semilogx(w, 20*log10(abs(h1)))
grid on;
hold on;
[h2, w] = freqs(b2, a2, logspace(-2, 1, 10000));
semilogx(w, 20*log10(abs(h1)))
[h3, w] = freqs(b3, a3, logspace(-2, 1, 10000));
semilogx(w, 20*log10(abs(h3)))
[h4, w] = freqs(b4, a4, logspace(-2, 1, 10000));
semilogx(w, 20*log10(abs(h4)))
hold off;
legend(['Butterworth n= ' num2str(n1)], ['Chebyshev1 n= ' num2str(n1)], ...
['Chebyshev2 n= ' num2str(n1)], ['Elliptico n= ' num2str(n1)])

subplot(223)
semilogx(w, unwrap(angle(h1)))
grid on;
hold on;
semilogx(w, unwrap(angle(h2)))
semilogx(w, unwrap(angle(h3)))
semilogx(w, unwrap(angle(h4)))
hold off;
legend(['Butterworth n= ' num2str(n1)], ['Chebyshev1 n= ' num2str(n1)], ...
['Chebyshev2 n= ' num2str(n1)], ['Elliptico n= ' num2str(n1)])

subplot(2,2,[2,4])
b = b1; a = a1;
plot(real(roots(b)), imag(roots(b)), 'o', real(roots(a)), imag(roots(a)), 'x');
grid on;
hold on;
b = b2; a = a2;
plot(real(roots(b)), imag(roots(b)), 'o', real(roots(a)), imag(roots(a)), 'x');
b = b3; a = a3;
plot(real(roots(b)), imag(roots(b)), 'o', real(roots(a)), imag(roots(a)), 'x');
b = b4; a = a4;
plot(real(roots(b)), imag(roots(b)), 'o', real(roots(a)), imag(roots(a)), 'x');
max = 4
axis([-1.1 1.1 -1.1 1.1]*max); axis square
hold off
legend(['Butterworth n= ' num2str(n1)], ['Chebyshev1 n= ' num2str(n1)], ...
['Chebyshev2 n= ' num2str(n1)], ['Elliptico n= ' num2str(n1)])

%% Transformacao de frequencia
% LP para LP
ap = a4; bp = b4; % Butterworth
syms p;
Np(p) = poly2sym(bp, p);
Dp(p) = poly2sym(ap, p);
Hp(p) = Np(p) / Dp(p);
pretty(vpa(collect(Hp(p)), 5))

% %% Normalizando de acordo com p^n
% bs = sym2poly(N);
% as = sym2poly(D);
% an = as(1);
% bsn = bs/an;
% asn = as/an;
% Hsn(s) = poly2sym(bsn, s)/poly2sym(asn, s);
% pretty(vpa(Hsn(s), 5))

%%
syms s;
Hs(s) = collect(subs(Hp(p), s/wp));
[N, D] = numden(Hs(s));
pretty(vpa(Hs(s), 3))

%% Normalizando de acordo com p^n
bs = sym2poly(N);
as = sym2poly(D);
an = as(1);
bsn = bs/an;
asn = as/an;
Hsn(s) = poly2sym(bsn, s)/poly2sym(asn, s);
pretty(vpa(Hsn(s), 5))

%% Resposta em frequencia
clear h w
figure(2)
[h, w] = freqs(bsn, asn, logspace(1, 6, 1000));
semilogx(w, 20*log10(abs(h)))
grid on
hold on







%% Transformacao de frequencia
% LP para HP
wp = 1000; ws = 500;
ap = a4; bp = b4; % Butterworth
syms p;
Np(p) = poly2sym(bp, p);
Dp(p) = poly2sym(ap, p);
Hp(p) = Np(p) / Dp(p);
pretty(vpa(collect(Hp(p)), 5))

% %% Normalizando de acordo com p^n
% bs = sym2poly(N);
% as = sym2poly(D);
% an = as(1);
% bsn = bs/an;
% asn = as/an;
% Hsn(s) = poly2sym(bsn, s)/poly2sym(asn, s);
% pretty(vpa(Hsn(s), 5))

%%
syms s;
Hs(s) = collect(subs(Hp(p), wp/s));
[N, D] = numden(Hs(s));
pretty(vpa(Hs(s), 3))

%% Normalizando de acordo com p^n
bs = sym2poly(N);
as = sym2poly(D);
an = as(1);
bsn = bs/an;
asn = as/an;
Hsn(s) = poly2sym(bsn, s)/poly2sym(asn, s);
pretty(vpa(Hsn(s), 5))

%% Resposta em frequencia
clear h w
figure(2)
[h, w] = freqs(bsn, asn, logspace(1, 6, 1000));
semilogx(w, 20*log10(abs(h)))

