function p = colisao_aniversarios(n, N)
E = randi(365, n, N);

c = 0;
for i = 1 : N
    if length(unique(E(:,i))) == n
        c = c + 1;
    end
end

p = c/N; %Probabilidade de não colisão

end