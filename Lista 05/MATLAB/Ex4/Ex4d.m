% Cálculo da TFTD
% k = número de pontos da TFTD
k = 2^10;
r=input('Entre com o valor (0 < r < 1) de r = ');
theta=input('Entre com o valor (em radianos) de theta = ');
% Polinomio do denominador
den=[1 -2*r*cos(theta) r^2];
% Polinômio do numerador
num=1;
% Frequencia angular - contínua
w=0:2*pi/k:2*pi;
% Cálculo da resposta em frequência
H=freqz(num,den, w)

%n = número de ponto do período de x(n)
n =0:2*pi/k:2*pi
%declaração de x(n)
x = cos(3*pi/4*n)

%filtragem de x(n) utilizando H(z)
y=filter(num,den,x)

%gráfico gerado num intervalo de 2*pi
figure(1)
plot(n,x)
%axis ([0 2*pi -1 1])
xlim([0 2*pi])
hold on
plot(n,y)
grid