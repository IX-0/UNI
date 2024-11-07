m = [1e4 1e5];
n = 1:1:100;
N = 1e5;

p1 = zeros(1,10);
p2 = p1;
for i = 1 : length(n)

    p1(i) = dardos(n(i),m(1), N);
    p2(i) = dardos(n(i),m(2), N);

end

plot(n,p1,n,p2)
% Conclusões:
% Quanto maior o numero de alvos maior é a chance de não haver colisões
% e menor é o declinio dessa probabilidade conforme o aumento do numero
% de dardos

