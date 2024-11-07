% X="x terem defeito"

%Probabilidade de em 8000peças sairem
n=8000;
k=7;
p=1/1000;
Pa = nchoosek(n,k) * p^(k) * (1-p)^(n-k);

lambda = n*p; %Var ou media
Pb = (lambda)^k * exp(-lambda)/factorial(k)
