clear all; close all; clc;

load sunspot.dat
year = sunspot(:,1);
relNums = sunspot(:,2);
figure(1); subplot(211);
plot(year,relNums)
xlabel('Year')
ylabel('Zurich Number')
title('Sunspot Data')

%%
subplot(212);
plot(year(1:50),relNums(1:50),'b.-');
xlabel('Year')
ylabel('Zurich Number')
title('Sunspot Data')

%%
y = fft(relNums);
y(1) = [];
figure(3)
plot(y,'ro')
xlabel('real(y)')
ylabel('imag(y)')
title('Fourier Coefficients')

%%
n = length(y);
power = abs(y(1:floor(n/2))).^2; % power of first half of transform data
maxfreq = 1/2;                   % maximum frequency
freq = (1:n/2)/(n/2)*maxfreq;    % equally spaced frequency grid
figure(4); subplot(121);
plot(freq,power)
xlabel('Cycles/Year')
ylabel('Power')

%%
period = 1./freq;
subplot(122);
plot(period,power);
%xlim([0 50]); %zoom in on max power
xlabel('Years/Cycle')
ylabel('Power')