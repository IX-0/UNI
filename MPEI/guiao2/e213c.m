
n = 50;
N = 1e4;

res = [];
T = 100:100:1000;
for i = 1 : length(T)
    res(i) = colisao_keys(n, T(i), N);
end

plot(T, res)