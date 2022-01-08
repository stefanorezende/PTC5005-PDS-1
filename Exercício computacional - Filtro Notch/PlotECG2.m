%PTC 5005 - 2019
%Prof: Maria D. Miranda
%Aluno: Stéfano Albino Vilela Rezende (Ouvinte)
%Exercício Computacional - Filtro Notch

%1.a)
clear

load('dados05102012.mat')

N = length(ecg2);
n = 0 : N-1;
[omega,H] = TFTD(n, ecg2);
figure(1)
subplot(311); plot(n, ecg2); title('ECG(n)'); grid
subplot(312); plot(omega/pi,abs(H)); grid; title('Modulo da TFTD de ECG(n)')
subplot(313); plot(omega/pi,angle(H)); grid; title('Fase da TFTD de ECG(n)')