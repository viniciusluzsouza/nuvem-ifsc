clear all;
close all;
clc;

M = 2; % numero de simbolos da transmissao 
N = 10; % fator de superamostragem
A1 = 1; % amplitude pulso
A2 = 2; % amplitude pulso
Eb = 1; % Energia bit
Rb = 10; % taxa de bits por segundo
passo_t = 1/(N*Rb);
filtro_nrz = ones(1, N); % filtro NRZ
limiar_nrz_1 = A1/2;
limiar_nrz_2 = A2/2;
limiar_nrz = [limiar_nrz_1 limiar_nrz_2];

info = randi([0 M-1], 1, 1000000);
info_up = upsample(info, N);
t = [0:passo_t:(length(info)/Rb) - passo_t];

%% Exercicio 1
% 1. Transmiss?o utilizando sinaliza??o NRZ unipolar com
% amplitude de 1V e 2V, ambos sem a utiliza??o de filtro casado;
figure(1)
for A = [A1 A2]
    for SNR = 0:5
        tx = filter(filtro_nrz, 1, info_up)*A;
        rx = awgn(tx, SNR);

        z_T = rx(N/2:N:end);
        info_hat = z_T > limiar_nrz(A);
        num_erro = sum(xor(info, info_hat)); % comparando os erros de bit
        taxa_erro(SNR + 1) = num_erro/length(info);
    end
    if A == A1
        subplot(211)
    else
        subplot(212)
    end
    SNR_vec = [0:5];
    semilogy(SNR_vec, taxa_erro)
    xlabel('SNR [dB]')
    ylabel('BER')
    title(['NRZ unipolar ', num2str(A), 'V sem filtro'])
    hold on
    grid on
end

%% Exercicio 2
% 2. Transmiss?o utilizando sinaliza??o NRZ unipolar com
% amplitude de 1V, com e sem filtro casado;
figure(2)
for i = [1 2]
    for SNR = 0:5
        tx = filter(filtro_nrz, 1, info_up)*A1;
        if i == 1
            rx = awgn(tx, SNR);
            z_T = rx(N/2:N:end);
        else
            filtro_cas = fliplr(filtro_nrz);
            rx = filter(filtro_cas, 1, tx)/N;
            z_T = rx(N:N:end);
        end
        
        info_hat = z_T > limiar_nrz_1;
        num_erro = sum(xor(info, info_hat)); % comparando os erros de bit
        taxa_erro(SNR + 1) = num_erro/length(info);
    end
    SNR_vec = [0:5];
    if i == 1
        subplot(211)
        semilogy(SNR_vec, taxa_erro)
        title('NRZ unipolar 1V sem filtro')
    else
        subplot(212)
        semilogy(SNR_vec, taxa_erro)
        title('NRZ unipolar 1V com filtro casado')
    end
    xlabel('SNR [dB]')
    ylabel('BER')
    hold on
    grid on
end

%% Exercicio 3
% 3. Transmiss?o utilizando sinaliza??o NRZ unipolar e bipolar,
% ambos com a utiliza??o de filtro casado; 

figure(3)
for i = [1 2]
    for SNR = 0:5
        if i == 1
            tx = filter(filtro_nrz, 1, info_up)*A1;
        else
            tx = filter(filtro_nrz, 1, info_up)*(2*A1)-A1;
        end

        filtro_cas = fliplr(filtro_nrz);
        rx = filter(filtro_cas, 1, tx)/N;
        z_T = rx(N:N:end);
        info_hat = z_T > limiar_nrz_1;
        num_erro = sum(xor(info, info_hat)); % comparando os erros de bit
        taxa_erro(SNR + 1) = num_erro/length(info);
    end
    SNR_vec = [0:5];
    if i == 1
        subplot(211)
        semilogy(SNR_vec, taxa_erro)
        title('NRZ unipolar 1V com filtro casado')
    else
        subplot(212)
        semilogy(SNR_vec, taxa_erro)
        title('NRZ bipolar 1V com filtro casado')
    end
    xlabel('SNR [dB]')
    ylabel('BER')
    hold on
    grid on
end

%% Exercicio 4
% 4. Plote as express?es te?ricas de Pb das sinaliza??es Polar e
% Bipolar (eq. 3.73 e 3.76) e compare-as com os resultados da
% simula??o do item 3. Observe que as simula??es anteriores
% est?o em fun??o de SNR e as express?es em fun??o de
% Eb/No!

Eb_No = 0:15;
ebno = 10.^(Eb_No/10); % valor em dB
% snr = ebno*(info/
Pb1 = qfunc(sqrt(ebno));
Pb2 = qfunc(sqrt(2*ebno));

figure(4)
semilogy(Eb_No, Pb1); ylim([10e-7 1])
xlabel('Eb/No (dB)')
ylabel('Bit error probability (Pb)')
grid on; hold on;
semilogy(Eb_No, Pb2)
legend('Unipolar', 'Bipolar')
