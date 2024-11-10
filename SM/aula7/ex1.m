load('Guitar03.mat');

% Ta = 0.01;
% t = 0:Ta:10;
% x = sin(2*pi*t);

[X, f] = espectro(x,1/fa);

Xfiltered = zeros(size(X));
banda = abs(f)>100 & abs(f)<400;
Xfiltered(banda) = X(banda);

sound(x,fa);
reconstroi(X, f);
hold on
reconstroi(Xfiltered,f); 
hold off