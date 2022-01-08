% Lista 2 - Exercício 7

clear
close all

% a)
fa=8000
x=audioread('LOCUTOR.WAV')
N=length(x)
n=0:N-1

f1=2417
s1=sin(2*pi*(f1/fa)*n)

x1=x+s1'
x1=x1/max(abs(x1))

sound(x1,fa)
pause

% b)

b=[-0.0030    0.0299    0.0220   -0.0304   -0.0722   -0.0002    0.1953    0.3730  0.3730    0.1953   -0.0002   -0.0722   -0.0304    0.0220    0.0299   -0.0030];

y1=FiltroFIR(b,x1);

sound(y1,fa)
pause

figure(1)
plot(n/fa,x1)
hold on
plot(n/fa,y1,'r')
hold off
grid
legend('x_1(n)','y_1(n)')
xlabel('tempo (s)')

% c) 
f2=2680;
s2=sin(2*pi*(f2/fa)*n);

x2=x+s2';
x2=x2/max(abs(x2));

sound(x2,fa)
pause

% d)
y2=filtroFIR(b,x2);

sound(y2,fa)
pause

figure(2)
plot(n/fa,x2)
hold on
plot(n/fa,y2,'r')
hold off
grid
legend('x_2(n)','y_2(n)')
xlabel('tempo (s)')

% e)
[H,f]=freqz(b,1,4096,fa);


 figure(3)
 subplot(211)
 plot(f,20*log10(abs(H)));
 grid
 title('Módulo')
 xlabel('frequência (Hz)')
 
 subplot(212)
 plot(f,180*unwrap(angle(H))/pi);
 grid
 title('Fase (graus)')
 xlabel('frequência (Hz)')
 
 