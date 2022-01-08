%PTC 5005 - 2019
%Prof: Magno Silva
%Aluno: St�fano Albino Vilela Rezende (Ouvinte)
%Lista de Exerc�cios 1 - Exerc�cio 8
clear
N = 20 %n�mero de amostras
sn = 0
En = 0

n = 0:1:N-1

s = 1./((-2).^(n))-j*1./(5.^n) %sequ�ncia de tempo discreto


for i=1:1:N %soma das amostras
sn = sn+s(i) 
end

% S2= sum (s) %outra forma de fazer a soma das amostras do sinal s

PG = (1- (1/((-2)^N)))/(1-(1/(-2)))-j*(1-(1/(5^N)))/(1-(1/5)) %valida��o da soma das amostras pelo somat�rio de P.G.


for i=1:1:N %c�lculo da enertgia do sinal s.
En = En+s(i)*conj(s(i))
end

% En2 = sum(abs(s).^2) %outra forma de fazer o c�lculo da energia de s

% En3 = sum(s.*conj(s)) %outra forma de fazer o c�lculo da energia de s

figure (1)
subplot(211)
stem (n,real(s))
grid
xlabel('n')
ylabel('Real s(n)')
axis([0 20 -1 1])
subplot(212)
stem (n,imag(s))
grid
xlabel('n')
ylabel ('Imag s(n)')
axis([0 20 -1 1])