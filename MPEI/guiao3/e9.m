% randn() numeros que seguem a distribuição padrão

N = 1e5;

sigma = 2; %Desvio
mean = 14; %Média

notas = randn(1,N) * 2 + 14;
media = sum(notas) ./ N;
variancia = var(notas);

sucessosA = notas > 12 & notas < 16;
sucessosB = notas > 10 & notas < 18;
Pa = sum(sucessosA)/N
Pb = sum(sucessosB)/N %Podia ser feito com a 
% função distribuição acumulada Fx(18) - F(10)

% b) deve dar sempre á volta de 0.95 uma vez que estamos
% a calcular P( X > mean - 2sigma & mean + 2sigma < X)
sucessosC = notas < 10;
Pc = 1 - sum(sucessosC)/N
PcTeorico = 1 - normcdf(10,14,2)
