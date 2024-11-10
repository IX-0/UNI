%Alinea a)
M = readcell("PL5Ex2.csv");
car = M(1,2:end - 1);
cla = M(2:end,end);
X = cell2mat( M(2:end, 2:end-1) );

unique_class = unique(cla);
num_class = length(unique_class);
num_car = length(car);

perm = randperm(size(X,1));
percent = 0.7;
num_treino = round(length(perm) * percent);

%Alinea b)
%Matrizes de treino / test
TREINO = X(perm(1:num_treino),:);
CLASS_TREINO = cla(perm(1:num_treino),:);

TESTE = X(perm(num_treino + 1:end),:);
CLASS_TESTE = cla(perm(num_treino + 1:end),:);

%Alinea c)
p_classes = zeros(1,num_class);
for i = 1:num_class
    p_classes(i) = sum(strcmp(CLASS_TREINO, unique_class(i)))/num_treino;
end

%Alinea d)
p_dado_class = zeros(num_class,num_car);
for i = 1:num_class
    TREINO_CLASS_I = TREINO(strcmp(CLASS_TREINO, unique_class(i)),:);
    for j = 1:num_car
        p_dado_class(i,j) = sum(TREINO_CLASS_I(:,j))/size(TREINO_CLASS_I,1);
    end
end

%Alinea e)
num_amostras_test = size(TESTE,1);
p_para_classificar = zeros(num_class,num_amostras_test) + 1;
for i = 1:num_class
    p_para_classificar(:,i) = p_para_classificar(:,i) * p_classes(i);
    
    %Calcula: P ( C_i | amotra_j) usando a regra de bayes.
    for j = 1:num_amostras_test
        for k = 1:num_car
            if TESTE(j,k) ~= 0
                p_para_classificar(i,j) = ...
                p_para_classificar(i,j) * p_dado_class(i,k);
            end
        end
    end
end