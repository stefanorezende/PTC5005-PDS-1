clear

h = [-0.03 0.0299 0.022 -0.0304 -0.0722 -0.0002 0.1953 0.3730 0.3730 0.1953 -0.0002 -0.0722 -0.0304 0.022 0.0299 -0.03 ]

n = [1 2 3 4 5 6 7 8 9 10]
x = (1/2).^n


y= FiltroFIR(x,h)

% N = length(x)
% M = length(h)
% 
% X = zeros (1,M) 
% y = zeros (1,N)
% 
% h = reshape (h,[],1)
% 
% for n=1:N
%     X = [x(n) X(1:M-1)]
%     y(n)= X*h
% end


%Conferindo
z=conv(x,h)
z= reshape (z,1,[])