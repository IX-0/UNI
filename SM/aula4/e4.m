Ta = 0.001;
K = 10;
T0 = 1;
f0 = 1/T0;
t = 0:Ta:5;
x1 = -sawtooth(2*pi*f0*(t-0.25),0.5); %0.5 para criar uma onda triangulo

subplot(2,1,1)
plot(t,x1)

[ak, bk] = decomposeSignal(Ta,T0, x1, K);

Np = 6;
[x2,t] = composeSignal(Ta, f0, Np, ak, bk);

subplot(2,1,2)
plot(t,x2)