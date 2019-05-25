%% Passa baixa
fp = 941; fs = 1209;
Ap = 1; As = 20;

fa = 8000;

ws = 2*pi*fs;
wp = 2*pi*fp;
wa = fa * 2 * pi;

tetha_s = ws/(wa/2);
tetha_p = wp/(wa/2);

% nao pode ser muito perto de 1
% ver frequencia de amostragem
lambda_s = 2*tan(tetha_s * pi/2);
lambda_p = 2*tan(tetha_p * pi/2);

Os = lambda_s/lambda_p;
Op = 1;

[n1, Wn] = buttord(Op, Os, Ap, As, 's');
[b,a] = butter(n1,Wn,'s');

[h, w] = freqs(b,a,logspace(-2, 1, 10000));

% Plotando centrado em 0
semilogx(w, 20*log10(abs(h)))
ylim([-80 10])
hold on
grid on
plot([10^-2,Os,Os,10^1],[0,0,-As,-As], 'r')
plot([10^-2,1,1],[-Ap,-Ap,-80], 'r')

syms p;
Np(p) = poly2sym(b,p);
Dp(p) = poly2sym(a,p);
Hp(p) = Np(p)/Dp(p);
pretty(vpa(collect(Hp(p)),5))

syms s;
Hs(s) = collect(subs(Hp(p), s/wp));
pretty(vpa(Hs(s),3))
Hsc(s) = (Hs(s));
[N,D] = numden(Hsc(s));

bs = sym2poly(N);
as = sym2poly(D);

an = as(1);
bsn = bs/an;
asn = as/an;

Hsn(s) = poly2sym(bsn,s) / poly2sym(asn,s);
pretty(vpa(Hsn(s),5))

figure(2)
[h,w] = freqs(bsn,asn,logspace(1,6,1000));
semilogx(w/2/pi,20*log10(abs(h)));
ylim([-80 10])
xlim([10^2 10^4])
grid on
hold on
% Fazer a mascara em cima do LAMBDA
plot([10^1,fs,fs,10^4],[0,0,-As,-As], 'r')
plot([10^1,fp,fp],[-Ap,-Ap,-80], 'r')