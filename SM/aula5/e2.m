fa = 200; %Hz
Ta = 1/fa;
t = 0:Ta:10-Ta;
x = 10 + 14*cos(20*pi*t - pi/3) ...
    + 8*cos(40*pi*t + pi/2);

[X, f] = espectro(x,Ta);
stem(f,abs(X))