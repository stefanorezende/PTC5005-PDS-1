%PTC 5005 - 2019
%Prof: Maria D. Miranda
%Aluno: St�fano Albino Vilela Rezende (Ouvinte)
%Exerc�cio Computacional - Filtro Notch

%1.b)
clear

load('dados05102012.mat')

N = length(ecg2);
n = 0 : N-1;
[omega,H] = TFTD(n, sinal);
figure(2)
subplot(311); plot(n, sinal); title('ECG + Interfer�ncia(n)'); grid
subplot(312); plot(omega/pi,abs(H)); grid; title('Modulo da TFTD de ECG + Interfer�ncia(n)')
subplot(313); plot(omega/pi,angle(H)); grid; title('Fase da TFTD de ECG + Interfer�ncia(n)')