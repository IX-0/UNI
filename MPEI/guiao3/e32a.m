%Espaço de amostragem são 100 acontecimentos
%Sair cada uma das 100 notas individuais

n = 100;
S = 1:n;
P = ones(n,1)/n;

subplot(121)
stem(S,P);
title("Função massa de probabilidade")
xlabel("x")
ylabel("p(x)")

subplot(122)
stairs(S,cumsum(P))
title("Função de probabilidade acumulada")
xlabel("x")
ylabel("p(x)")