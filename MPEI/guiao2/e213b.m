
T = 1000;
N = 1e4;

res = [];
for n = 1 : T
    res(n) = colisao_keys(n, T, N);
    if res(n) < 1e-4
        break
    end
end

plot(1:n, 1 - res)
%Depois de tentar adicionar á volta de 130keys
%É quase impossivel não haver colisão