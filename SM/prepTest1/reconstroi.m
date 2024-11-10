function [x, t] = reconstroi(ck, Np, Ta, f0)
    T0 = 1 / f0;
    t = 0:Ta:T0*Np - Ta;
    K = length(ck);
    x = 0;
    for k = 1:K
        x = x + ck(k) ...
            * exp(-2i * pi * f0 * (k - round(K/2)) * t);
    end
    x = real(x);
end