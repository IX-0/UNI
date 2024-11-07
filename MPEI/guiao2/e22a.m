%A – a soma dos dois valores e igual a 9
%B – o segundo valor e par
%C – pelo menos um dos valores e igual
%D – nenhum dos valores e igual a 1

N = 1e6;
E = randi(6,2,N);

%Lançamentos que obdecem á condição A
lA = (E(1,:) + E(2,:)) == 9;
A = E(lA);

%Lançamentos que obdecem á condição B
lB = mod(E(2,:),2) == 0;
B = E(lB);

%Lançamentos que obdecem á condição C
lC = E(1,:) == 5 | E(2,:) == 5;
C = E(lC);

%Lançamentos que obdecem á condição D
lD = E(1,:) ~= 5 & E(2,:) ~= 1;
D = E(lD);

PA = length(A)/N
PB = length(B)/N
PC = length(C)/N
PD = length(D)/N

%Resultados teóricos no tablet
l1 = lA & lB;
l2 = lC & lB;

alineab = length(E(l1))/N
alineab = PA * PB 
%p(ab) = p(a) * p(b) (aproximadamente)
%logo são independentes

alineac = length(E(l2))/N
alineac = PC * PD
%Já aqui não se verifica essa igualdade
%Logo não são independentes