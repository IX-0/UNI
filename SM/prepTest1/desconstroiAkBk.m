function [Ak, Bk] = desconstroiAkBk(x, T0, Ta, K)
    f0=1/T0;
    N=length(x);
    t = (0:Ta:(N-1)*Ta);
    for k=1:K
        cosk= cos(k*2*pi*f0*t);
        sink= sin(k*2*pi*f0*t);
        Ak(k) = 2*sum(x.*cosk*Ta)/(N*Ta);
        Bk(k) = 2*sum(x.*sink*Ta)/(N*Ta);
    end
end