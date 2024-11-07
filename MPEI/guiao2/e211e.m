%% ALINEA E

%Considerar 1 como rapaz

n = 5;%Numero de filhos
p = 0.5;%Prob de ser rapaz/rapariga
N = 1e6;%Numero de experiencias


E = rand(n, N) < p;
v_cf = sum(E) == 2;
v_2raparigas = sum(E) == 0;

cp = N - sum(v_2raparigas); 
cf = sum(v_cf);

%Prob de haver pelo menos um rapaz em n filhos
P = cf/cp