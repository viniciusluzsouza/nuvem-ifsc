clear all;
close all;
clc;

%% Butter passa baixa
fp = 941; fs = 1209;
fa = 8000;
Ap = 1; As = 20;

fN = (fa/2);
Wp = fp/fN;
Ws = fs/fN;

[n, Wn] = buttord(Wp, Ws, Ap, As);
[b, a] = butter(n, Wn);
[h, w] = freqz(b,a);
plot(w/pi*fN, 20*log10(abs(h))); grid on;

%% Butter passa alta
fs = 941; fp = 1209;
fa = 8000;
Ap = 1; As = 20;

fN = (fa/2);
Wp = fp/fN;
Ws = fs/fN;

[n, Wn] = buttord(Wp, Ws, Ap, As);
[b, a] = butter(n, Wn, 'high');
[h, w] = freqz(b,a);
plot(w/pi*fN, 20*log10(abs(h))); grid on;


%% Butter passa faixa
%  (fp1 = 811 Hz, fp2 = 895,5 Hz fs1 = 770 Hz, fs2 = 941 Hz, Ap = 1 dB, Ar = 30 dB)
fp1 = 811; fp2 = 895.5;
fs1 = 770; fs2 = 941;
Ap = 1;
As = 30;
fa = 8000;
fN = (fa/2);
Wp = [fp1 fp2]/fN;
Ws = [fs1 fs2]/fN;

[n, Wn] = buttord(Wp, Ws, Ap, As);
[b, a] = butter(n, Wn, 'bandpass');
[h, w] = freqz(b,a);
plot(w/pi*fN, 20*log10(abs(h))); grid on;

%% Butter rejeita faixa
% (fp1 = 53 Hz, fs1 = 58 Hz, fs2 = 62 Hz fp2 = 67 Hz, Ap = 2 dB, Ar = 25 dB)
fp1 = 53; fp2 = 67;
fs1 = 58; fs2 = 62;
Ap = 1;
As = 30;
fa = 200;
fN = (fa/2);
Wp = [fp1 fp2]/fN;
Ws = [fs1 fs2]/fN;

[n, Wn] = buttord(Wp, Ws, Ap, As);
[b, a] = butter(n, Wn, 'stop');
[h, w] = freqz(b,a, 10000);
figure(1)
subplot(121)
plot(w/pi*fN, 20*log10(abs(h))); grid on;
subplot(122)
zplane(b, a)

%% iirnotch
% 0 em cima do circulo
% componente "b1" igual
fa = 200;
fN = (fa/2);
wo = 60/fN; bw = 10/fN;

[b, a] = iirnotch(wo, bw);
fvtool(b, a)

syms z;
N(z) = poly2sym(b, z);
D(z) = poly2sym(a, z);
H(z) = N(z)/D(z);
pretty(vpa(collect(H(z)), 5))


%% iirpeak
% 0 em cima do circulo
% componente "b1" igual
fa = 200;
fN = (fa/2);
wo = 60/fN; bw = 10/fN;

[b, a] = iirpeak(wo, bw);
fvtool(b, a)

syms z;
N(z) = poly2sym(b, z);
D(z) = poly2sym(a, z);
H(z) = N(z)/D(z);
pretty(vpa(collect(H(z)), 5))


%% iircomb
fa = 8000; fN = (fa/2);
fo = 500; bw = 20/fN;
[b,a] = iircomb(fa/fo,bw,'notch'); % Note type flag 'notch'
fvtool(b,a);


%% iircomb peak
fa = 8000; fN = (fa/2);
fo = 500; bw = 20/fN;
[b,a] = iircomb(fa/fo,bw,'peak'); % Note type flag 'notch'
fvtool(b,a);
