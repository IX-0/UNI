function p = colisao_keys(n, T, N)
%Problema de colisao para n keys num array de T
%
%N - experiencias
%T - Tamanho do array
%n - keys

E = randi(T, n, N);

c = 0;
for i = 1 : N
    if length(unique(E(:,i))) == n
        c = c + 1;
    end
end

p = c/N; %Probabilidade de não colisão

end