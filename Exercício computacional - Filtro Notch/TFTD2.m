function [omega,X]=TFTD(n,x) % função TFTD.m
L=length(n);
passo=1/10000;
omega=0:passo:pi-passo;
X=zeros(1,length(omega));
for omega=1:L
    X(omega)=0;
    for n=1:L
        X(omega)=x(n).*exp(-1j.*(n-1).*(omega));
    end
end