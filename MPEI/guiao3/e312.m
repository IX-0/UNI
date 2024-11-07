%Experiencia elementar - Caixa com n brinquedos
%Cada brinquedo pode ou não ter defeito

%% ALINEA A)

N = 1e6;
n = 8;

pPeca1 = 2e-3;
pPeca2 = 5e-3;
pMontagem = 1e-2;

E = ((rand(n,N) < pPeca1) ...
   + (rand(n,N) < pPeca2) ...
   + (rand(n,N) < pMontagem));

%A lógica para a matriz experimental é a mesma que em 1)

E1 = E == 0; %Brinquedos sem defeitos
cf = sum(E1) == n;

pB_experimental = sum(cf)/N

%% ALINEA B)
pB_teorica = (1-pPeca1)^n * (1-pPeca2)^n * (1-pMontagem)^n
%Como era de esperar p(A) = 1 - p(B) uma vez que estes dois acontecimentos 
% são complementares


%% ALINEA C)
K = 2:20;
for k = 1:length(K)
    pB(k) = simBrinquedosCaixas(K(k),pPeca1,pPeca2,pMontagem,N);
end

stem(K,pB)

%Parece um traçado que desce linearmente com o numero de brinquedos 
%incluidos na caixa

%Faz sentido pensando no problema, quantos mais brinquedos tivermos, mais
%fases (criação de peças ou montagem) podem introduzir defeitos no produto
%final, logo a probabilidade de não haver nenhum brinquedo defeituoso desce
