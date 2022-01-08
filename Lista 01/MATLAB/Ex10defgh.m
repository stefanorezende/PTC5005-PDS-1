%PTC 5005 - 2019
%Prof: Magno Silva
%Aluno: St�fano Albino Vilela Rezende (Ouvinte)
%Lista de Exerc�cios 1 - Exerc�cio 10

N = 100
n = 0:1:N-1

s = cos (pi/9.*n-pi/3)



h = [1/4, 1/4, 1/4, 1/4]

y = conv (s,h)

figure (1)
subplot 211
stem (n,s)
grid
xlabel('n')
ylabel ('s(n)')
axis ([0 103 -1 1])
n=0:1:size(y,2)-1
subplot 212
stem (n,y)
grid
xlabel('n')
ylabel ('y(n)')
axis ([0 103 -1 1])