function p = dardos(n,m,N)
%Probabilidade da experiencia de lançar 
% n dardos ás cegas para m alvos
% sem que haja colisões
%
%N - experiencias
%n - dardos
%m - alvos

    E = randi(m,n, N);
    
    c = 0;
    for i = 1 : N
        if length(unique(E(:,i))) == n
            c = c + 1;
        end
    end

    p = c/N;
end