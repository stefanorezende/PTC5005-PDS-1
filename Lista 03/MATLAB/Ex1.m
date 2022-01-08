x1 = [6 5 4 3 2 1 0]
x2 = [0 0 1 0 0 0 0]
x3 = [1 0 0 0 1 0 0]

y1 = conv (x1,x2)
y2 = conv (x1,x3)


N = 7

for k=1:N
    X1(k)=0;
    for n=1:N
        X1(k)=X1(k)+x1(n).*exp(-1j.*2.*pi.*(n-1).*(k-1)./N);
    end
end

for k=1:N
    X2(k)=0;
    for n=1:N
        X2(k)=X2(k)+x2(n).*exp(-1j.*2.*pi.*(n-1).*(k-1)./N);
    end
end

for k=1:N
    X3(k)=0;
    for n=1:N
        X3(k)=X3(k)+x3(n).*exp(-1j.*2.*pi.*(n-1).*(k-1)./N);
    end
end

Y1 = X1.*X2
Y2 = X1.*X3

for k=1:N
    y3(k)=0;
    for n=1:N
        y3(k)=y3(k)+1/N*Y1(n).*exp(1j.*2.*pi.*(n-1).*(k-1)./N);
    end
end

for k=1:N
    y4(k)=0;
    for n=1:N
        y4(k)=y4(k)+1/N*Y2(n).*exp(1j.*2.*pi.*(n-1).*(k-1)./N);
    end
end

figure (1)
subplot(211)
stem (y1)
grid
xlabel('n')
ylabel ('y1(n)')
subplot(212)
stem (y3)
grid
xlabel('n')
ylabel ('y1(n)')


figure (2)
subplot(211)
stem (y2)
grid
xlabel('n')
ylabel ('y1(n)')
subplot(212)
stem (y4)
grid
xlabel('n')
ylabel ('y1(n)')