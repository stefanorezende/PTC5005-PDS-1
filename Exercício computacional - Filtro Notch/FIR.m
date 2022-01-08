%PTC 5005 - 2019
%Prof: Maria D. Miranda
%Aluno: Stéfano Albino Vilela Rezende (Ouvinte)
%Exercício Computacional - Filtro Notch

load('dados05102012.mat')
%2.a)

fa=1200; % frequencia de amostragem
fint=60; % frequencia fundamental a ser eliminada
K=5; % fundamental mais K-1 de harm^onicas
Nt=length(sinal);
n=1:Nt-1;
omega0=2*pi*fint/fa;
z1=exp(1j*omega0*[1:K]); % zeros da fun¸c~ao de transfer^encia
% Precisamos ter zeros tamb´em nos complexos conjugados para que os coef. do
% filtro sejam reais
z2=conj(z1);
ind=find(real(z2)==-1);
z2(ind)=[]; % para evitar zero duplo em -1
zz=[z1 z2]; % o filtro n~ao elimina DC pois n~ao tem zeros em z=1
bfir=poly(zz); % numerador do filtro FIR
figure(1)
zplane(bfir,1); title('Zeros do FIR')

%b)
fator=input('Entre com o valor do fator do  = ');
bfirfator=fator*bfir;
[Hfir,ffir]=freqz(bfirfator,1,4096,fa);

figure(2)
subplot(211); plot(ffir,20*log10(abs(Hfir))); ylabel('Módulo (dB)'); grid on;
title('Resposta em frequência do filtro FIR')
subplot(212); plot(ffir,angle(Hfir));
ylabel('Fase (rad)'); xlabel('f (Hz)'); grid on

%c)
% Filtro FIR
ecg_fir=filter(bfirfator,1,sinal);
t=(0:length(sinal)-1)/fa; % tempo em segundos
figure(3)
t1=length(bfir);
t2=length(sinal);
subplot(211); plot(t(t1:t2), sinal(t1:t2)); title('ECG com interferência'); grid
subplot(212); plot(t(t1:t2), ecg_fir(t1:t2));
xlabel('tempo (s)'); title('Saída do filtro FIR')
hold; plot(t, ecg2(1:end),'r'); hold off; grid

%d)
[omega, Hsinal] = TFTD (n,ecg_fir)
figure(4)
subplot(211); plot(omega/pi,abs(Hsinal)); grid; title('Modulo da TFTD de ECG(n) Filtrado')
subplot(212); plot(omega/pi,angle(Hsinal)); grid; title('Fase da TFTD de ECG(n) Filtrado')