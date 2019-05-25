% 
% w32= hamming(32);
% stem(w32); hold on;

% w32= hamming(26);
% w64 = hamming(64);

w32= rectwin(26);
w64= rectwin(34);

wvtool(w32, w64)