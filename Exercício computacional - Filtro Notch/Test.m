N = 50;
n = 0 : N-1;
a = 0.9; % a=-0.9
h = a.^ n;
[H, omega] = TFTD(n, h);
figure(1)
subplot(311); stem(n, h); title('h(n)'); grid
subplot(312); plot(omega/pi,abs(H)); grid; title('Modulo da TFTD de h(n)')
subplot(313); plot(omega/pi,angle(H)); grid; title('Fase da TFTD de h(n)')