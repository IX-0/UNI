%Sendo X:"Numero de emails por segundos"
%Sendo Y:"Numero de mensagens por 4 segundos"

lambdaX = 15; %Emails por segundo
lambdaY = 4*lambdaX; %Emails por 4 segundos

%E[Y] = E[4*X] = 4*E[X]

%Pa = P(Y = 0)
%k = 0

k = 0;
%% Alinea a)
Pa = lambdaY^k * exp(-lambdaY) / factorial(k)

%% ALinea b)
K = 0:100;
Py = lambdaY .^ K * exp(-lambdaY) ./ factorial(K);
Fy = cumsum(Py);
Pb = 1 - Fy(41)