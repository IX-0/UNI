%% ALINEA A)
N = 1e5;
n = 20;
m = 1;

p1 = 2e-3;
p2 = 5e-3;
pM = 1e-3;

E = ((rand(n,N) < p1) ...
   + (rand(n,N) < p2) ...
   + (rand(n,N) < pM));

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

p0 = hadErrors/commercialized; %Prob de serem comercializadas erradamente
p1 = commercialized/N;%Prob de serem comercializadas

%Conclui-se que quase todas as caixas são comercializadas, o que não é mt
%bom até porque segundo a minha simulação 0.14 das que foram
%comercializadas tinham brinquedos com defeito não atingindo assim 0.9 de
%comercialização sem defeitos requerido pela empresa

%% ALINEA B)

N = 1e5;
n = 20;
p1 = 2e-3;
p2 = 5e-3;
pM = 1e-3;

M = 1:n;
for m = M
    %Probabilidade de comercialização sem erros
    px(m) = 1 - simControloQualidade(n,m,p1,p2,pM,N);
end

stem(M,px)
% A partir dos 7 brinquedos é atingida a meta para 0.90 de comercialização
% sem defeitos da empresa