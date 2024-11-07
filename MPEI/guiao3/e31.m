n = 6;
p = 1/n;
S = 1:n;
P = zeros(n,1) + p;

subplot(121)
stem(S,P); %Alinea a)
title("Função massa de probabilidade")
xlabel("x")
ylabel("p(x)")


%Alinea b)
Pcum = zeros(n,1);
for i = 1:6
    Pcum(i) = sum(P(1:i));
end
% cumsum(P);

subplot(122)
stairs(S,Pcum)
title("Função de probabilidade acumulada")
xlabel("x")
ylabel("p(x)")