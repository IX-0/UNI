%Experiencia elementar - Caixa com n brinquedos
%Cada brinquedo pode ou não ter defeito

N = 1e6;
n = 8;

pPeca1 = 2e-3;
pPeca2 = 5e-3;
pMontagem = 1e-2;

E = ((rand(n,N) < pPeca1) ...
   + (rand(n,N) < pPeca2) ...
   + (rand(n,N) < pMontagem));

%Cada brinquedo pode ter defeito associado a cada uma das três fases de
%fabrico, tendo defeito numa delas o produto final fica com defeito também.
%Logo a soma do numero de defeitos no total das 3 fases sendo maior que 0
%equivale a haver defeito no produto final

E1 = E > 0; %Peças com 1 ou mais erros são defeituosas
cf = sum(E1) > 0;

pA_experimental = sum(cf)/N
pA_teorica = 1 - ((1-pPeca1)^n * (1-pPeca2)^n * (1-pMontagem)^n)
%Probabilidade teorica de 1 ou mais brinquedos ter defeito
%Que é complementar de a caixa ter 0 brinquedos

%Uma vez que o valor simulado e teorico concordam sinto me seguro deste
%resultado

prob_rel_mont = (pMontagem)/(pPeca2 + pPeca1 + pMontagem);

num_def_mont = 0;
for column = E(:,cf)
    num_def_mont = num_def_mont ...
        + sum( ...
        rand(1,sum(column == 1)) < prob_rel_mont ...
        );
end
%Explicação:
% E(:,cf) equivale a todas as experiencias elmentares em que se verifica A
% sum(column == 1) é numero de brinquedos que só possuem 1 defeito
% prob_rel_mont é a probabilidade de o defeito ser da montagem
%   sabendo que a peça possui apenas 1 defeito


alineaB = num_def_mont/sum(cf)




