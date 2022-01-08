% Lista 2 - Exercício 7

clear
close all

clc
fa=8000;

% a)
x=audioread('LOCUTOR.WAV');
N=length(x);
n=0:N-1;

f2=2680;
s2=sin(2*pi*(f2/fa)*n);

x2=x+s2';
x2=x2/max(abs(x2));

% sound(x2,fa)
% pause
h=[-0.0030    0.0299    0.0220   -0.0304   -0.0722   -0.0002    0.1953    0.3730  0.3730    0.1953   -0.0002   -0.0722   -0.0304    0.0220    0.0299   -0.0030]
% d)
y2=conv(x2,h);

sound(y2,fa)
pause

% figure(2)
% plot(n/fa,x2)
% hold on
% plot(n/fa,y2,'r')
% hold off
% grid
% legend('x_2(n)','y_2(n)')


figure(1)
plot(x2)
hold on
plot(y2,'r')
hold off
grid
legend('x_2(n)','y_2(n)')
xlim ([0 190000])
xlabel('amostras (n)')