N = 1e6; %Numero de experiencias
n = 20; %Numero de dados lançados
m = 100; %Numero de alvos

%Experiencia elementar lançar um dardo
% 0 < rand() < 1 -> 1 <= randi(100) <= 100

E = randi(100,n, N);

c = 0;
for i = 1 : N
    if length(unique(E(:,i))) == n
        c = c + 1;
    end
end

cf = c;
cp = N;

Pa = cf/cp

%% ALINEA B

%Os casos descrevidos são o complementar dos 
% casos descrevidos em A) logo

Pb = 1 - Pa

%%Teoricamente

%Pensando teóricamente, existem 100^20 casos possiveis
%E para a alinea a), para não haverem "Colisões" 
%Existem 100!/80! casos favoráveis
%Fazendo as contas Pa = (100!/80!) / 100^20 = 0.1304
%Já a probabilidade de b) sendo o complementar de a)
% Pb = 1 - Pa = 0.8696