function [x,t] = composeSignalCk(Ta, f0, Np, Ck)
    T0 = 1/f0;
    t = 0:Ta:T0*Np;
    K = length(Ck);
    x = 0;
    for k = 1:K
       x = x + Ck(k) .* exp(1i * 2 * pi * f0 * t * k);
    end
    x = 1/T0 * x;
end