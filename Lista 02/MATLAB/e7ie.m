


fa=8000;
h=[-0.0030    0.0299    0.0220   -0.0304   -0.0722   -0.0002    0.1953    0.3730  0.3730    0.1953   -0.0002   -0.0722   -0.0304    0.0220    0.0299   -0.0030];

[H,f]=freqz(h,1,4098,fa);

 figure(3)
 subplot(211)
 plot(f,20*log10(abs(H)));
 grid
 title('Módulo')
 xlabel('frequência (Hz)')
 ylim([-100 10])
  
 subplot(212)
 plot(f,180*(angle(H))/pi);
 grid
 title('Fase (graus)')
 xlabel('frequência (Hz)')
 ylim ([-200 200])