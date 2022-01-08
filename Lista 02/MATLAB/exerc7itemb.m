% Lista 2 - Exercício 7

clear
close all

clc
fa=8000;

% a)
x=audioread('LOCUTOR.WAV');
N=length(x);
n=0:N-1;

f1=2417;
s1=sin(2*pi*(f1/fa)*n);

x1=x+s1';
x1=x1/max(abs(x1));
% 
% sound(x1,fa)
% pause

h=[-0.0030    0.0299    0.0220   -0.0304   -0.0722   -0.0002    0.1953    0.3730  0.3730    0.1953   -0.0002   -0.0722   -0.0304    0.0220    0.0299   -0.0030];

y1=conv(x1,h);
n1=length(y1)

% sound(y1,fa)
% pause

figure(1)
plot(x1)
hold on
plot(y1,'r')
hold off
grid
legend('x_1(n)','y_1(n)')
xlim ([0 190000])
xlabel('amostras (n)')