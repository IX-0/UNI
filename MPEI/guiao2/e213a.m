%problema de colisão usei o codigo da 2

N = 1e4; %Numero de experiencias
n = 10; %Numero de keys
T = 1000; %Tamanho do array

E = randi(T, n, N); 

c = 0;
for i = 1 : N
    if length(unique(E(:,i))) == n
        c = c + 1;
    end
end

cf = c;
cp = N;

P = cf/cp; %P("N HAVER COLISÃO")
Prob_colisao = 1 - P