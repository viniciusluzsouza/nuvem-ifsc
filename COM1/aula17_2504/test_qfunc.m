close all
clear all
clc

Eb_No = 0:15;
ebno = 10.^(Eb_No/10); % valor em dB

Pb1 = qfunc(sqrt(ebno));
Pb2 = qfunc(sqrt(2*ebno));


semilogy(Eb_No, Pb1)
ylim([10e-7 1])
xlabel('Eb/No (dB)')
ylabel('Bit error probability (Pb)')
grid on
hold on
semilogy(Eb_No, Pb2)
legend('Unipolar', 'Bipolar')
