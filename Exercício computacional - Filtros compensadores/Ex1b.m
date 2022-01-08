%PTC 5005 - 2019
%Prof: Maria D. Miranda
%Aluno: Stéfano Albino Vilela Rezende (Ouvinte)
%Exercício Computacional - Filtros Compensadores

%1)b)

N=100; 
n=[0:N-1]
x=(.8).^(n);
%Filtro de distorção
A=conv([1 -.95],[1 -.98]);
B=[1 -1/2]; 
%Filtro compensador
Ac=[1 -1/2]; 
Bc=conv([1 -.95],[1 -.98]);

y=filter(B,A,x); %Sinal corrompido
x_est=filter(Bc,Ac,y); %Sinal recuperado

figure(1)
subplot(211); stem(x(1:N)); title('x(n)'); grid
subplot(212); stem(x_est(1:N)); title('x_{est}(n)'); grid
figure(2)
subplot(211); plot(abs(fft(x)),'linewidth',2); title('|X(k)|^2'); grid
subplot(212); plot(abs(fft(x_est)),'linewidth',2); title('|X_{est}(k)|^2'); grid
figure(3)
subplot(211); plot(angle(fft(x)),'linewidth',2); title('Fase'); grid
subplot(212); plot(angle(fft(x_est)),'linewidth',2); title('Fase'); grid