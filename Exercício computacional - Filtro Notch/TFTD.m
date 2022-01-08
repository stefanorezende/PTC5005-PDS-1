function [omega,X]=TFTD(n,x) % função TFTD.m
L=length(n);
passo=1/10000;
omega=0:passo:pi-passo;
X=zeros(1,length(omega));
for k=1:L
X=X+x(k).*exp(-1j*omega*n(k));
end