%PTC 5005 - 2019
%Prof: Maria D. Miranda
%Aluno: Stéfano Albino Vilela Rezende (Ouvinte)
%Exercício Computacional - Filtro Notch

%1.b)
clear

load('dados05102012.mat')

N = length(ecg2);
n = 0 : N-1;
[omega,H] = TFTD(n, sinal);
figure(2)
subplot(311); plot(n, sinal); title('ECG + Interferência(n)'); grid
subplot(312); plot(omega/pi,abs(H)); grid; title('Modulo da TFTD de ECG + Interferência(n)')
subplot(313); plot(omega/pi,angle(H)); grid; title('Fase da TFTD de ECG + Interferência(n)')