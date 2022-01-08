%PTC 5005 - 2019
%Prof: Magno Silva
%Aluno: Stéfano Albino Vilela Rezende (Ouvinte)
%Lista de Exercícios 2 - Exercício 7


function y = filtroFIR (x,h)

N = length(x)
M = length(h)

X = zeros (1,M) 
y = zeros (1,N)

conv (x,h)
    