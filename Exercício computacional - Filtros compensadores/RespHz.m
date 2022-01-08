k=2^10
w=0:pi/k:pi

A=conv([1 -.95],[1 -.98]);
B=[1 -1/2]; % ou B=[1 -2]
%Filtro compensador
Ac=[1 -1/2]; % completar
Bc=conv([1 -.95],[1 -.98]); % completar

[H,f]= freqz(B,A,4096)
[Hc,fc]= freqz (Bc,Ac,4096)

figure(1)
subplot(2,2,1); zplane(B,A);grid;
xlabel('real(omega)'); ylabel('imag(omega)')

subplot(2,2,2); plot(f/pi,abs(H));grid;
title('Módulo do espectro')
xlabel('Frequência angular normalizada'); ylabel('Modulo normalizado')

subplot(2,2,4); plot(f/pi,angle(H));grid;
axis([0 1 -pi pi]);
title('Fase do espectro')
xlabel('Frequência angular normalizada'); ylabel('Fase em radianos')

figure(2)
subplot(2,2,1); zplane(Bc,Ac);grid;
xlabel('real(omega)'); ylabel('imag(omega)')

subplot(2,2,2); plot(fc/pi,abs(Hc));grid;
title('Módulo do espectro')
xlabel('Frequência angular normalizada'); ylabel('Modulo normalizado')

subplot(2,2,4); plot(fc/pi,angle(Hc));grid;
axis([0 1 -pi pi]);
title('Fase do espectro')
xlabel('Frequência angular normalizada'); ylabel('Fase em radianos')