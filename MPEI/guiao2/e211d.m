%% SIMULAÇÃO

N = 1e6;
p = 0.5;

%Se á partida o primeiro filho é rapaz,
%podemos só simular o segundo filho
E = rand(1,N) < p;

cf = sum(E == 1);
cp = N;

P = cf/cp

%Relativamente á indepência dos acontecimentos,
%verifica-se que o acontecimento "Segundo filho ser rapaz"
%é independente do acontecimento "Primeiro filho ser rapaz"
%No fundo o primeiro o sexo do primeiro não influencia o
%sexo do segundo, a chance de ser rapaz é sempre de 0.5
%independentemente do que aconteceu antes.