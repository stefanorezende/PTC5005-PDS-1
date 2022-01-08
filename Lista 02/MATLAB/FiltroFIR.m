%PTC 5005 - 2019
%Prof: Magno Silva
%Aluno: St�fano Albino Vilela Rezende (Ouvinte)
%Lista de Exerc�cios 2 - Exerc�cio 7


function y = filtroFIR (x,h)

N = length(x)
M = length(h)

X = zeros (1,M) 
y = zeros (1,N)

h = reshape (h,[],1)

for n=1:N
    X = [x(n) X(1:M-1)]
    y (n)=X*h
end
    