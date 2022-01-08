%PTC 5005 - 2019
%Prof: Magno Silva
%Aluno: St�fano Albino Vilela Rezende (Ouvinte)
%Lista de Exerc�cios 1 - Exerc�cio 10

N = 4
n = 0:1:N-1

s = cos (pi/9.*n-pi/3)

figure (1)
stem (n,s)
grid
xlabel('n')
ylabel ('s(n)')

h = [1/4, 1/4, 1/4, 1/4]

y = conv (s,h)

n = 0:1:size(y,2)-1

figure (2)
stem (n,y)
grid
xlabel('n')
ylabel('y(n)')
axis([0 8 0 1])
