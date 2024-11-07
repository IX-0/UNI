function p = simBrinquedosCaixas2(n,k,p1,p2,p3,N)
%Probabilidade de numa caixa com 'n' brinquedos que foram montados em 
%3 fases, cada uma com a sua prob de introduzir defeitos (p1, p2, p3) ter k
%brinquedos com defeito
% n - numero de brinquedos por caixa
% k - numero de brinquedos com defeito
% N - numero de experiencias a realizar

E = ((rand(n,N) < p1) ...
   + (rand(n,N) < p2) ...
   + (rand(n,N) < p3));

cf = sum(E > 0) == k;

p = sum(cf)/N;
end