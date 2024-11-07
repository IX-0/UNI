
S = [0 5 50 100 105];
P = [0 90 9 1 0]/100;

subplot(121)
stem(S,P);
title("Função massa de probabilidade")
xlabel("x")
ylabel("p(x)")

subplot(122);
Fx = cumsum(P);
stairs(S,Fx)
title("Função de probabilidade acumulada")
xlabel("x")
ylabel("p(x)")
axis([-10 110 -0.1 1.1])