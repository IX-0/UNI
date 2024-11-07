N = 1e6;

nA = 20;
pA = 0.01;

nB = 30;
pB = 0.05;

nC = 50;
pC = 0.001;

%A experiencia elementar consiste em formar
%um vetor logico de 100 elementos em que os primeiros nA
%elementos são do programador A, os seguintes nB do B e por
%ai em diante
E = [rand(nA, N) < pA; rand(nB, N) < pB; rand(nC, N) < pC];

bug_count = zeros(3,1);
for i = 1 : N
    bugs = find(E(:,i));
    tmp = bugs(randperm(length(bugs)));
    
    if (isempty(tmp))
        continue
    end
    tmp = tmp(1);
    if (tmp <= nA)
        bug_count(1) = bug_count(1) + 1;
    elseif (tmp <= nA + nB)
        bug_count(2) = bug_count(2) + 1;
    else
        bug_count(3) = bug_count(3) + 1;
    end

end

P = bug_count ./ sum(bug_count)

%Probabilidade de ser do carlos é de 0.85