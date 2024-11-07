%% ALINEA A)

%Funcao de massa de probabilidade conjunta
P_XY = [ 0.3 0.2 0; 0.1 0.15 0.05; 0 0.1 0.1];

%Funcao de massa de 
% probabilidade marginal de X e Y
P_X = sum(P_XY, 2); % Coluna
P_Y = sum(P_XY, 1); % Linha

Sx = 0:2;
Sy = Sx;
stem(Sx,P_X)
hold on
stem(Sy,P_Y)
hold off

legend("P_X","P_Y")

%% ALINEA B)

E_X = Sx * P_X;
E_Y = Sy * P_Y';

Var_X = (Sx.^2 * P_X) - E_X^2;
Var_Y = (Sy.^2 * P_Y') - E_Y^2;

%% ALINEA C)

E_XY = sum(Sx' * Sy .* P_XY, "all");
cov_XY = E_XY - E_X * E_Y;
sigma_X = sqrt(Var_X);
sigma_Y = sqrt(Var_Y);
coef_corr = cov_XY/(sigma_Y * sigma_X);