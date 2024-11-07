function p = avioes(m, p, N)
%Probabilidade de um avião com 'm' motores cair
%Considerando 'p' a prob de avaria em cada motor
%Sabendo que a avaria dos motores é independente
% m - numero de motores
% p - probabilidade de avaria
% N - numero de simulações

    E = rand(m,N) < p;
    quedas = sum(E) > m/2; %Quando motores avariados maior que m/2
    p = sum(quedas)/N;

end