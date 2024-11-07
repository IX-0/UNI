Ta = 0.001;
T0 = 1;
f0 = 1/T0;
Np = 6;
K = 10;
k = 1:K;
Ck = - 2 * 1i ./ (pi * k);
Ck(2:2:end) = 0;

[x, t] = composeSignalCk(Ta, f0, Np, Ck);
plot(t,x)