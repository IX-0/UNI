function prob = moedas(p, n, k ,N)
%
% p - probabilidade de coroa
% n - numero de lançamentos
% k - numero de coroas
% N - Numero de experiencias

E = rand(n,N) < p;
casosf = sum(E) == k; 
prob = sum(casosf)/N;
end