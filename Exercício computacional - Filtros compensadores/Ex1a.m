%PTC 5005 - 2019
%Prof: Maria D. Miranda
%Aluno: Stéfano Albino Vilela Rezende (Ouvinte)
%Exercício Computacional - Filtros Compensadores

%1)a)

%Filtro de distorção
A=conv([1 -.95],[1 -.98]);
B=[1 -1/2]; 

%Filtro compensador
Ac=[1 -1/2]; % completar
Bc=conv([1 -.95],[1 -.98]); % completar

figure(1)
zplane(B,A);grid;title('Polos e Zeros do H(z)')
xlabel('real(omega)'); ylabel('imag(omega)')


figure(2)
zplane(Bc,Ac);grid;title('Polos e Zeros do Hc(z)')
xlabel('real(omega)'); ylabel('imag(omega)')

