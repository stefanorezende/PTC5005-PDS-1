%PTC 5005 - 2019
%Prof: Magno Silva
%Aluno: Stéfano Albino Vilela Rezende (Ouvinte)
%Lista de Exercícios 3 - Exercício 7

x = [3 0 2 0 -1 1 -1 0 2]

X5 = fft(x,5)

N=length(X5)

figure (1)
subplot(211)
stem ([0:N-1],abs(X5))
grid
xlabel('k')
ylabel ('Módulo X5(k)')
subplot(212)
stem ([0:N-1],angle(X5))
grid
xlabel('k')
ylabel ('Fase X5(k)')

y5 = ifft(x,5)
N=length(y5)

figure (2)
subplot(211)
stem ([0:N-1],abs(y5))
grid
xlabel('n')
ylabel ('Módulo y5(n)')
subplot(212)
stem ([0:N-1],angle(y5))
grid
xlabel('n')
ylabel ('Fase y5(n)')

% x5 = [3/5 1/5*exp(-i*8*pi/5) 0 2/5*exp(-i*12*pi/5) 0]