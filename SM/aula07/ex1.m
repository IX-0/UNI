load('Guitar03.mat');

[X, f] = espectro(x,1/fa);

Xfiltered = zeros(size(X));
banda = abs(f)>100 & abs(f)<400;
Xfiltered(banda) = X(banda);


reconstroi(X, f);
hold on
reconstroi(Xfiltered,f);
hold off