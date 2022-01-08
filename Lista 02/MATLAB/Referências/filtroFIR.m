function y=filtroFIR(b,x)
% y=filtroFIR(b,x)
%
% Parâmetros de entrada
% b -> resposta impulsiva do sistema FIR 
% x -> sinal de entrada do filtro
% 
% Parâmetros de saída
% y -> sinal de saída do filtro


% MTMS, 2011

M=length(b);
N=length(x);
X=zeros(1,M);
y=zeros(1,N);

b=b(:);

for n=1:N
   X=[x(n) X(1:M-1)];
   y(n)=X*b;   
end