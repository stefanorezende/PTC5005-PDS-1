%PTC 5005 - 2019
%Prof: Magno Silva
%Aluno: Stéfano Albino Vilela Rezende (Ouvinte)
%Lista de Exercícios 3 - Exercício 6

clear
clc

x1 = [1 0 0 0 0 0]
x2 = [1 1 1 1 1 1]
x3 = [1 1 0 0 0 1]
x4 = [1 1 1 0 0 1]
x5 = [1 1 1 1 1 1 0 0 0 0 0 0]
x6 = [1 0 1 0 1 0 1 0 1 0 1 0]


%1. Espaçamento angular entre X1(k) e X2(k)

X1 = fft(x1,100)
X2 = fft(x2,100)

N=length(X1)

figure (1)
subplot(211)
stem ([0:N-1],180*unwrap(angle(X1))/pi)
grid
xlabel('k')
ylabel ('Fase X1(k)')
subplot(212)
stem ([0:N-1],180*unwrap(angle(X2))/pi)
grid
xlabel('k')
ylabel ('Fase X2(k)')

%3. Forneça os valores de X3(k) e X4(k)

X3 = fft(x3,6)
X4 = fft(x4,6)

N=length(X3)

figure (2)
subplot(211)
stem ([0:N-1],X3)
grid
xlabel('k')
ylabel ('X3(k)')
subplot(212)
stem ([0:N-1],X4)
grid
xlabel('k')
ylabel ('X4(k)')


%4. Forneça os valores de |X2(k)| e |X5(k)|

X2 = fft(x2,6)
X5 = fft(x5,12)

N=length(X2)
M=length(X5)

figure (3)
subplot(211)
stem ([0:N-1],abs(X2))
grid
xlabel('k')
ylabel ('Módulo X2(k)')
subplot(212)
stem ([0:M-1],abs(X5))
grid
xlabel('k')
ylabel ('Módulo X5(k)')

%5. Forneça os valores de |X2(k)| e |X6(k)|

X2 = fft(x2,6)
X6 = fft(x6,12)

N=length(X2)
M=length(X6)

figure (4)
subplot(211)
stem ([0:N-1],abs(X2))
grid
xlabel('k')
ylabel ('Módulo X2(k)')
subplot(212)
stem ([0:M-1],abs(X6))
grid
xlabel('k')
ylabel ('Módulo X6(k)')


% figure (2)
% subplot(211)
% stem ([0:N-1],abs(X3))
% grid
% xlabel('k')
% ylabel ('Módulo X3(k)')
% subplot(212)
% stem ([0:N-1],180*unwrap(angle(X3))/pi)
% grid
% xlabel('k')
% ylabel ('Fase X3(k)')
% 
% 
% 
% figure (3)
% subplot(211)
% stem ([0:N-1],abs(X4))
% grid
% xlabel('k')
% ylabel ('Módulo X4(k)')
% subplot(212)
% stem ([0:N-1],180*unwrap(angle(X4))/pi)
% grid
% xlabel('k')
% ylabel ('X4(k)')