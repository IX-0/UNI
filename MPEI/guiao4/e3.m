%% ALINEA A)

num_alunos = 120;

m1 = 14;
v1 = 1/4 * m1;

m2 = 14*1.2;
v2 = 1/4 * m2;

N1 = round(randn(1,num_alunos) * sqrt(v1) + m1);
N2 = round(randn(1,num_alunos) * sqrt(v2) + m2);

%% ALINEA B)
S = 1:22;

S_1 = min(N1):max(N2);
for i = S
    p1(i) = sum(N1 == i)/length(N1);
end

S_2 = min(N2):max(N2);
for i = S
    p2(i) = sum(N2 == i)/length(N2);
end

for j = S
    for k = S
        p12(j,k) = sum(N1 == j & N2 == k)/num_alunos;
    end
end

%% ALINEA C)

%Prob marginais
E_1 = sum(p1 .* S);
E_2 = sum(p2 .* S);

E_12 = 0;
for j = S_1
    for k = S_2
        E_12 = E_12 + p12(j,k) * S(j) * S(k);
    end
end
cov_12 = E_12 - E_1 * E_2;

%% ALINEA D)
if sum(p12 ~= p1' * p2, "all") == 0
    fprintf("INDEPENDENTES!!\n")
end %Não!