%Sendo X:"Erros numa página"
lambdaX = 0.02; %Numero de erros por página


%Sendo Y:"Erros em 100 páginas"
lambdaY = 100*lambdaX;

%P(Y=0 V Y=1) = P(Y=0) + P(Y=1)
k = 0:1;
Pa = sum(lambdaY.^k * exp(-lambdaY) ./ factorial(k));