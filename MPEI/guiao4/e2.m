%Funcao de massa de probabilidade conjunta
P_XY = [ 1/8 1/8 1/24; 1/8 1/4 1/8; 1/24 1/8 1/24];

%Funcao de massa de 
% probabilidade marginal de X e Y
P_X = sum(P_XY, 2); % Coluna
P_Y = sum(P_XY, 1); % Linha

subplot(131)
imagesc(P_XY)
title("P_XY")
colorbar()
colormap("hot")

subplot(132)
imagesc(P_X * P_Y)
title("P_X*P_Y")
colorbar()

subplot(133)
imagesc(P_XY - P_X * P_Y)
title("diff")
colorbar()

cond = sum(P_X * P_Y == P_XY, "all");