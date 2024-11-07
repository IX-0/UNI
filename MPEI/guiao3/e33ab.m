N = 1e6;
p = 0.5; %Moeda justa

S = 0:4;
P = zeros(5,1);
for i = S
    P(i+1) = P(i+1) + moedas(p, 4, i, N);
end

Pt = zeros(5,1);
for i = S
    Pt(i+1) = Pt(i+1) + nchoosek(4,i)* p^i *(1-p)^(4-i);
end
Pxt = cumsum(Pt);
Px = cumsum(P);

subplot(1,2,1)
hold on
stem(S,P, "Marker","o")
stem(S,Pt, "Marker","+")
hold off
title("Função massa de probabilidade")
xlabel("x")
ylabel("p(x)")

subplot(1,2,2)
stairs(S,Px)
title("Função de probabilidade acumulada")
xlabel("x")
ylabel("p(x)")

%Valor esperado
EX = sum(S .* P')
EXt = sum(S .* Pt')

%Variancia
EX2 = sum(S.^2 .* P')
EX2t = sum(S.^2 .* P')

Var = EX2 - EX^2
Vart = EX2t - EXt^2

DevP = sqrt(Var)
DevPt = sqrt(Vart) 

%% Alinea f)

%  i) 1 - Fx(2)
% ii) Fx(2)
%iii) Fx(4) - F(0)