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
axis ([0 4 0 1])

