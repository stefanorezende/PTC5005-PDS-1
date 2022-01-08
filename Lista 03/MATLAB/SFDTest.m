clc
clear

x1= [6 5 4 3 2 1 0]

N = length (x)


for k=1:N
    X(k)=0;
    for n=1:N
        X(k)=X(k)+x(n).*exp(-1j.*2.*pi.*(n-1).*(k-1)./N);
    end
end



figure (1) %gráfico do sinal s1(n)
subplot(211)
stem (real(x))
grid
xlabel('n')
ylabel ('Real s1(n)')
subplot(212)
plot (imag(x))
grid
xlabel('n')
ylabel ('Imag s1(n)')

