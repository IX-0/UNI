n = 100;
m = [2e2 5e2 1e3 2e3 5e3 1e4 2e4 5e4 1e5];
N = 1e4;


res = zeros(1,length(N));
for i = 1 : length(m)
    res(i) = dardos(n, m(i), N);
end

plot(m, res);
%Parece haver um espécie de aumento logaritmico
%na probabilidade de não haver colisão
