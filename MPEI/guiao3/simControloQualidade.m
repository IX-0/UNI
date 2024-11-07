function p = simControloQualidade(n,m,p1,p2,p3,N)
    %Probabilidade de as caixas comercializadas terem algum brinquedo com
    %defeito, após o controlo de qualidade em 'm' brinquedos
    %n - numero de brinquedos
    %m - numero de brinquedos para o controlo de qualidade
    %N - numero de experiencias

    E = ((rand(n,N) < p1) ...
        + (rand(n,N) < p2) ...
        + (rand(n,N) < p3));

    E = E > 0; %Não importa se o brinquedo tem 1 2 ou 3 defeitos

    commercialized = 0;
    hadErrors = 0;
    for box = E
        box = box(randperm(length(box)));
        sample = box(1:m);
        if (sum(sample) == 0)
            commercialized = commercialized + 1;
            if (sum(box) > 0)
                hadErrors = hadErrors + 1;
            end
        end
    end

    p = hadErrors/commercialized; 
end