fim = 10;
inicio = 0;
ta = 0.001;
t = inicio:ta:fim;
T = (fim - inicio);
N = T / ta;

x1 = @(t) abs(sin(6*pi*t) + sin(7*pi*t) + sin(8*pi*t)).^2;
x2 = sin(6*pi*t) + sin(7*pi*t) + sin(8*pi*t);

% LAMBDA : x = @(t) func(t)

% P = 1/T * [|x(t)|^2](0 -> T)
% Discretizando: 
% P = (1/N*ta) * sum(abs(x(t)) .^ 2) * ta
%   = 1/N * sum(abs(x(t)) .^ 2)


P1 = integral(x1, 0, T)/T
P2 = 1/T * sum(abs(x2) .^ 2) * ta