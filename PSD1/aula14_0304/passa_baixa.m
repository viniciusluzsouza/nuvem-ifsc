%% Exemplo filtro passa_baixa
fp = 941; fs = 1209;
Ap = 1; As = 20;

ws = 2*pi*fs;
wp = 2*pi*fp;

Os = ws/wp;
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
plot([10^1,fs,fs,10^4],[0,0,-As,-As], 'r')
plot([10^1,fp,fp],[-Ap,-Ap,-80], 'r')

%% Exemplo filtro passa_alta
fp = 1209; fs = 941;
Ap = 1; As = 20;

ws = 2*pi*fs;
wp = 2*pi*fp;

Os = wp/ws;
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
Hs(s) = collect(subs(Hp(p), wp/s));
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
plot([10^4,fs,fs,10^1],[0,0,-As,-As], 'r')
plot([10^4,fp,fp],[-Ap,-Ap,-80], 'r')

%% Passa Faixa
fp1 = 811; fp2 = 895.5;
fs1 = 770; fs2 = 941;
f0 = sqrt(fp1*fp2);
B = fp2 - fp1;

Ap = 1;
As = 30;

ws1 = 2*pi*fs1; ws2 = 2*pi*fs2;
w0 = 2*pi*f0;
Bw = 2*pi*B;

Os1 = abs((w0^2 - ws1^2)/(Bw*ws1));
Os2 = abs((w0^2 - ws2^2)/(Bw*ws2));

Os = min(Os1,Os2);
Op = 1;

% [n1, Wn] = buttord(Op, Os, Ap, As, 's');
% [b,a] = butter(n1,Wn,'s');

% n = cheb1ord(Op, Os, Ap, As,'s')
% [b,a] = cheby1(n,Ap, Op, 's');

% [n, Wn] = ellipord(Op, Os, Ap, As,'s')
% [b,a] = ellip(n,Ap,As, Wn, 's');

n = cheb2ord(Op, Os, Ap, As,'s');
n = n + 1;
[b,a] = cheby2(n,As, Os, 's');

% [h w] = freqs(b,a,logspace(-2, 1, 10000))
% semilogx(w, 20*log10(abs(h)))
[h, w] = freqs(b,a,linspace(-100, 100, 10000));
plot(w, 20*log10(abs(h)))

ylim([-80 10])

grid on
hold on
plot([10^-2,Os,Os,10^1],[0,0,-As,-As], 'r')
plot([10^-2,1,1],[-Ap,-Ap,-80], 'r')

ap = a; bp = b;

syms p;
Np(p) = poly2sym(bp,p);
Dp(p) = poly2sym(ap,p);
Hp(p) = Np(p)/Dp(p);
pretty(vpa(collect(Hp(p)),5))

syms s
Hs(s) = collect(subs(Hp(p), (s^2 + w0^2)/(Bw*s)));
[N, D] = numden(Hs(s));
pretty(vpa(Hs(s),3))

bs = sym2poly(N);
as = sym2poly(D);

an = as(1);
bsn = bs/an;
asn = as/an;
Hsn(s) = poly2sym(bsn,s)/poly2sym(asn,s);
pretty(vpa(Hsn(s),5))

figure(2)
[h, w] = freqs(bsn,asn,linspace(-20000*2*pi,20000*2*pi,10000));
subplot(211)
plot(w/2/pi,20*log10(abs(h)));
ylim([-80 10])
grid on
hold on
plot([0,fs1,fs1],[-As,-As, 10], 'r')
plot([fs2,fs2,2000],[10,-As,-As], 'r')
plot([fp1,fp1,fp2,fp2],[-80,-Ap,-Ap, -80], 'r')

subplot(212)
plot(w/2/pi,unwrap(angle(h))/pi)