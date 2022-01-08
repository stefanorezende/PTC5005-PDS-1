%PTC 5005 - 2019
%Prof: Maria D. Miranda
%Aluno: St�fano Albino Vilela Rezende (Ouvinte)
%Lista de Exerc�cios 5 - Exerc�cio 1

clear
clc
%d)

%V0(z)
BV0 = [1 -2 3/4] %Numerador de V0(z)
AV0 = [1 -3 -2] %Denominador de V0(z)

zV0 = roots(BV0) %c�lculo dos Zeros
pV0 = roots(AV0) %c�lculo dos P�los

figure (1)
zplane (zV0,pV0)
grid

%V1(z)
BV1 = [1 -1.2 0.8]%Numerador de V1(z)
AV1 = [1.7 1 0.7] %Denominador de V1(z)

zV1 = roots(BV1)%c�lculo dos Zeros
pV1 = roots(AV1)%c�lculo dos P�los

figure (2)
zplane (zV1,pV1)
grid

%V2(z)
BV2 = [1 -2 10 6 65] %Numerador de V2(z)
AV2 = [4 -8.68 -17.98 26.74 -8.04]%Denominador de V2(z)

zV2 = roots(BV2)%c�lculo dos Zeros
pV2 = roots(AV2)%c�lculo dos P�los


figure (3)
zplane (zV2,pV2)
grid

ModpV0 = abs(pV0) %raios das circunfer�ncias dos p�los de V0(z) 
ModpV1 = abs(pV1) %raios das circunfer�ncias dos p�los de V1(z) 
ModpV2 = abs(pV2) %raios das circunfer�ncias dos p�los de V2(z) 