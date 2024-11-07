%% ALINEA A)
% X = "Numero de brinquedos com defeito numa caixa"

N = 1e6;

p1 = 2e-3;
p2 = 5e-3;
pM = 1e-2;

n = 6;
S = 0:n;
for k = S
    px(k+1) = simBrinquedosCaixas2(n,k,p1,p2,pM,N);
end

Fx = cumsum(px);
hold on
stem(S , px)
stairs(S, Fx)
hold off
legend("px", "Fx")

%% ALINEA B)
% px( X >= 2) = 1 - Fx(2)
pb = 1-Fx(3)

%% ALINEA C)
Ex = sum(px .* S);
varX = sum(px.^2 .* S) - sum(px .* S)^2; %Variancia negativa ns pq...
sigmaX = varX^(1/2);

% Corri com n=8 e n=16, o valor esperado aumenta quando mais aumento o n
%Normal uma vez que ha mais brinquedos mais oportunidade de introdução de
%defeitos, ns oq dzr mais aqui sobre as diferenças