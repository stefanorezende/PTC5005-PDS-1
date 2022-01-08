%PTC 5005 - 2019
%Prof: Maria D. Miranda
%Aluno: St�fano Albino Vilela Rezende (Ouvinte)
%Lista de Exerc�cios 5 - Exerc�cio 1

clear
clc
%a)

%X0(z)
BX0 = [1 -3 -2] %Numerador de X0(z)
AX0 = [1 -2 3/4] %Denominador de X0(z)

zX0 = roots(BX0) %c�lculo dos Zeros
pX0 = roots(AX0) %c�lculo dos P�los

figure (1)
zplane (zX0,pX0)
grid

%X1(z)
BX1 = [1.7 1 0.7]%Numerador de X1(z)
AX1 = [1 -1.2 0.8] %Denominador de X1(z)

zX1 = roots(BX1)%c�lculo dos Zeros
pX1 = roots(AX1)%c�lculo dos P�los

figure (2)
zplane (zX1,pX1)
grid

%X2(z)
BX2 = [4 -8.68 -17.98 26.74 -8.04]%Numerador de X2(z)
AX2 = [1 -2 10 6 65] %Denominador de X2(z)

zX2 = roots(BX2)%c�lculo dos Zeros
pX2 = roots(AX2)%c�lculo dos P�los


figure (3)
zplane (zX2,pX2)
grid


%b)
ModpX0 = abs(pX0) %raios das circunfer�ncias dos p�los de X0(z) 
ModpX1 = abs(pX1) %raios das circunfer�ncias dos p�los de X1(z) 
ModpX2 = abs(pX2) %raios das circunfer�ncias dos p�los de X2(z) 












