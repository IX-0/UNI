%% Teoricamente
%Sabendo que um dos filhos é rapaz existem 3 casos:
%MF FM MM
%Desses 3 apenas 1 nos interessa: MM
%Logo P = 1/3 = 0.33(3)

%% SIMULAÇÃO

N = 1e6;
p = 0.5;

E = rand(2, N) < p;
v_cf = sum(E) == 2;
v_2raparigas = sum(E) == 0;

cp = N - sum(v_2raparigas); 
cf = sum(v_cf);

P = cf/cp