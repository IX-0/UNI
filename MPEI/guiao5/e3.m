% Caracteristicas
% [Acão?, Comédia?, Duracão, Num Avaliacãoes positivas]

X = [1 0 1 1
     0 1 0 0
     0 1 0 1
     1 0 1 1
     1 1 0 1
     0 1 0 0];
%I - Interessa; NI - Não interessa
categorias = categorical({'I', 'NI', 'I', 'I', 'I', 'NI'});

p_interessa = sum(categorias == 'I')/length(categorias);
p_ninteressa = sum(categorias == 'NI')/length(categorias);


% X_interessa
X_interessa = X(categorias == 'I',:);

cf = sum(X_interessa);
cp = size(X_interessa,1); % Ou sum(X_interessa,"all")

% indice x corresponde á x'ésima categoria
p_dado_interessa = cf/cp;


% X_ninteressa
X_ninteressa = X(categorias == 'NI',:);

cf = sum(X_ninteressa);
cp = size(X_ninteressa,1);

% indice x corresponde á x'ésima categoria
p_dado_ninteressa = cf/cp;


a = [1 0 1 1];
p_a_interessa = p_interessa;
p_a_ninteressa = p_ninteressa;

for i = 1:4
    if a(i) ~= 0
        p_a_interessa = p_a_interessa * p_dado_interessa(i);
    end

    if a(i) ~= 0
        p_a_ninteressa = p_a_ninteressa * p_dado_ninteressa(i);
    end
end