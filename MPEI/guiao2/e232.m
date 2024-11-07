N = 1e6;

E = randi(3, 2, N);

%Teoricamente:
%Existem 5 casos possiveis:
% 21 12 23 32 22
%Apenas 2 são favoraveis:
% 21 12

cp = 0;
cf = 0;
for i = 1 : N
    col = E(:,i);
    if (any(col == 2))
        cp = cp + 1;
        if (any(col == 1))
            cf = cf + 1;
        end
    end
end

P = cf / cp %Teorica concorda com a experimental