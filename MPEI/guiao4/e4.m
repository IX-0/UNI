%Funcao de massa de probabilidade conjunta
P_XY_e = [ 0 1/4 ; 0 3/4];

%Funcao de massa de 
% probabilidade marginal de X e Y
P_X_e = sum(P_XY_e, 2); % Coluna
P_Y_e = sum(P_XY_e, 1); % Linha

subplot(131)
imagesc(P_XY_e)
title("P_XY")
colorbar()
colormap("hot")

subplot(132)
imagesc(P_X_e * P_Y_e)
title("P_X*P_Y")
colorbar()

subplot(133)
imagesc(P_XY_e - P_X_e * P_Y_e)
title("diff")
colorbar()

%O motivo é a correlação ser baixa, a previsao é apenas dependente da
%probabilidade de fzr sol, se a prob de fzr sol desce se para 0.25
%o estagiario já teria previsoes mts piores