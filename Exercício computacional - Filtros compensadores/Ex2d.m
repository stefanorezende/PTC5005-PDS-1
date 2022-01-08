%PTC 5005 - 2019
%Prof: Maria D. Miranda
%Aluno: Stéfano Albino Vilela Rezende (Ouvinte)
%Exercício Computacional - Filtros Compensadores

%2)d)

%Filtro de distorção
A=conv([1 -.95],[1 -.98]);
B=[1 -2];
%Filtro compensador
Ac=[-2 1]; 
Bc=conv([1 -.95],[1 -.98]);

[x,y,xest]=RotImag(A,B,Ac, Bc);

figure(1)
subplot(221); image(x)
subplot(222); image(y)
subplot(223); image(xest)