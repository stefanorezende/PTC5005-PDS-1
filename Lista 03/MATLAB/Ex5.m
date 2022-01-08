x = [1 2 0 2 0 0 0 0 -1 0]
w = [1 1 1 1 1 1 1 0 0 0]

X = fft(x,10)
W = fft(w,10)

Y=X.*W

y=ifft(Y,10)

y2= cconv(x,w,10)

