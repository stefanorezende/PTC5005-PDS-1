%PTC 5005 - 2019
%Prof: Maria D. Miranda
%Aluno: Stéfano Albino Vilela Rezende (Ouvinte)
%Exercício Computacional - Filtro Notch

load('dados05102012.mat')
%3.a)

fa=1200; % frequencia de amostragem
fint=60; % frequencia fundamental a ser eliminada
K=5; % fundamental mais K-1 de harm^onicas
Nt=length(sinal);
n=1:Nt-1;
omega0=2*pi*fint/fa;
z1=exp(1j*omega0*[1:K]); % zeros da fun¸c~ao de transfer^encia
% Precisamos ter zeros também nos complexos conjugados para que os coef. do
% filtro sejam reais
z2=conj(z1);
ind=find(real(z2)==-1);
z2(ind)=[]; % para evitar zero duplo em -1
zz=[z1 z2]; % o filtro não elimina DC pois não tem zeros em z=1

r=0.95; % modulo dos polos do filtro notch
polos=r*zz;
b64=real(poly(zz)); % numerador do filtro IIR
a64=real(poly(polos));% denominador do filtro IIR

figure(1)
zplane(b64,a64); title('Polos e Zeros do IIR')

%b)

figure(2)
[H64,f64]=freqz(b64,a64,4096,fa);
subplot(211); plot(f64,20*log10(abs(H64))); ylabel('Módulo (dB)'); grid on
subplot(212); plot(f64,angle(H64)); ylabel('Fase (rad)'); xlabel('f (Hz)'); grid on

%c)
% Filtro IIR
ecg_iir=filter(b64,a64,sinal);
t=(0:length(sinal)-1)/fa; % tempo em segundos
figure(3)
subplot(211); plot(t, sinal), title('ECG com interfência'); grid on
subplot(212); plot(t, ecg_iir), xlabel('tempo (s)'); title('Saída do filtro IIR')
hold; plot(t, ecg2(1:end),'r'); hold off; grid on

%d)
[omega, Hsinal] = TFTD (n,ecg_iir)
figure(4)
subplot(211); plot(omega/pi,abs(Hsinal)); grid; title('Modulo da TFTD de ECG(n) Filtrado')
subplot(212); plot(omega/pi,angle(Hsinal)); grid; title('Fase da TFTD de ECG(n) Filtrado')