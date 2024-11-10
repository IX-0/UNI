ck = [2i/(7*pi), 0, 2i/(5*pi), 0, 2i/(3*pi), 0, 2i/pi, 0, -2i/pi, 0, -2i/(3*pi), 0, -2i/(5*pi), 0, 2i/(7*pi)];
f0 = 1;
T0 = 1/f0;
Np = 5;
Ta=1e-3;

[x, t] = reconstroiCk(ck, Np, Ta, f0);

[Ak, Bk] = desconstroiAkBk(x,T0,Ta,1e3);

[x, t] = reconstroiAkBk(Ta, f0, Np, Ak, Bk);

plot(t,x)