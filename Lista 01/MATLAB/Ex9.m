%PTC 5005 - 2019
%Prof: Magno Silva
%Aluno: Stéfano Albino Vilela Rezende (Ouvinte)
%Lista de Exercícios 1 - Exercício 9

N = 75 %número de amostras
n = 0:1:N-1

s1 =exp(j*6.*n/pi)%sinal s1(n)

s2 = sqrt(cos(pi.*n./13))%sinal s2(n)

figure (1) %gráfico do sinal s1(n)
subplot(211)
stem (n,real(s1))
grid
xlabel('n')
ylabel ('Real s1(n)')
subplot(212)
stem (n,imag(s1))
grid
xlabel('n')
ylabel ('Imag s1(n)')

figure (2) %gráfico do sinal s2(n)
subplot(211)
stem (n,real(s2))
grid
xlabel('n')
ylabel ('Real s2(n)')
subplot(212)
stem (n,imag(s2))
grid
xlabel('n')
ylabel ('Imag s2(n)')