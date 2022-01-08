%PTC 5005 - 2019
%Prof: Maria D. Miranda
%Aluno: Stéfano Albino Vilela Rezende (Ouvinte)
%Exercício Computacional - Filtros Compensadores

%2)c)

%Filtro de distorção
A=conv([1 -.95],[1 -.98]);
B=[1 -2];
%Filtro compensador
Ac=[-2 1]; 
Bc=conv([1 -.95],[1 -.98]);

x0 = audioread('Que_maravilha_cut.wav');
Fs=44100; % frequência de amostragem
x=x0(2000:5*Fs,1)';

y=filter(B,A,x); %Sinal corrompido
x_est=filter(Bc,Ac,y); %Sinal recuperado
%sound(x,Fs); 
%sound(y,Fs); 
sound(x_est,Fs)

N=length(x);
figure(1)
subplot(311); plot(x(1:N),'.'); title('x(n)'); grid; xlim([0 2.185*10^5])
subplot(312); plot(y(1:N),'.'); title('y(n)'); grid; xlim([0 2.185*10^5])
subplot(313); plot(x_est(1:N),'.'); title('x_{est}(n)'); grid; xlim([0 2.185*10^5])

figure(2)
subplot(311); plot(abs(fft(x)),'linewidth',2); title('|X(k)|^2'); grid; xlim([0 2.185*10^5])
subplot(312); plot(abs(fft(y)),'linewidth',2); title('|Y(k)|^2'); grid; xlim([0 2.185*10^5])
subplot(313); plot(abs(fft(x_est)),'linewidth',2); title('|X_{est}(k)|^2'); grid; xlim([0 2.185*10^5])

figure (3)
subplot(311); plot(angle(fft(x)),'linewidth',0.3); title('Fase X(k)'); grid; xlim([0 2.185*10^5])
subplot(312); plot(angle(fft(y)),'linewidth',0.3); title('Fase Y(k)'); grid; xlim([0 2.185*10^5])
subplot(313); plot(angle(fft(x_est)),'linewidth',0.3); title('Fase X_{est}(k)'); grid; xlim([0 2.185*10^5])