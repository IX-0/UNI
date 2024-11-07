function p = simBrinquedosCaixas(n,p1,p2,p3,N)
%Probabilidade de numa caixa com 'n' brinquedos que foram montados em 3 fases,
%cada uma com a sua prob de introduzir defeitos (p1, p2, p3) não ter nenhum
%brinquedo com defeito
% N - numero de experiencias a realizar
E = ((rand(n,N) < p1) ...
   + (rand(n,N) < p2) ...
   + (rand(n,N) < p3));

E1 = E == 0;
cf = sum(E1) == n;

p = sum(cf)/N;
end