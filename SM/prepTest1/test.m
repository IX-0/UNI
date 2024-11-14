ck = [-4j/(pi * -5), 0, -4j/(pi * -3),0, -4j/(pi * -1), 0, -4j/(pi * 1), -4j/(pi * 3), -4j/(pi * 5)];

T0 = 2; %s
f0 = 1/T0; %Hz
fa = f0 * 100; %Hz
Ta = 1/fa; %s

Np = 4;
[x, t] = reconstroi(ck,Np,Ta,f0);

plot(t,x);
