M = 8;
k = -M:M;

% retangular
wk = ones(size(k));
stem(wk, 'x'); hold on

% bartlett
wk = 1 - abs(k)/(M+1);
stem(wk, 'o');

% hanning
wk = 0.5 + 0.5*cos(2*pi*k/(2*M+1));
stem(wk, 'd');

% hamming
wk = 0.54 + 0.46*cos(2*pi*k/(2*M+1));
stem(wk, '+');

hold off