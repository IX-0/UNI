M = readcell("PL5Ex2.csv");
car = M(1,2:end - 1);

cla = M(2:end,end);
X = cell2mat( M(2:end, 2:end-1) );

perm = randperm(size(X,1));
percent = 0.7;
num_treino = round(length(perm) * percent);

%Matrizes de treino / test
TREINO = X(perm(1,num_treino),:);
CLASS_TREINO = cla(perm(1,num_treino),:);

TESTE = X(perm(num_treino + 1,end),:);
CLASS_TESTE = cla(perm(num_treino + 1,end),:);