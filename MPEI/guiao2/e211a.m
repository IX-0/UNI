%% ALINEA A

%Considerar 1 como rapaz

n = 2;%Numero de filhos
p = 0.5;%Prob de ser rapaz/rapariga
N = 1e6;%Numero de experiencias

E = rand(n,N) < p;
v_cf = sum(E) >= 1; %Casos possiveis = N
cf = sum(v_cf);
cp = N;

%Prob de haver pelo menos um rapaz em n filhos
P = cf/cp

%% ALINEA B

%Teoricamente existem 4 casos : FF MM FM MF (f - rapariga, m - rapaz)
%E 3 são favoráveis, logo = 3/4 = 0.75
%Os resultados concordam!