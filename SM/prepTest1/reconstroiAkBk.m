function [x, t] = reconstroiAkBk(Ta, f0, Np, Ak, Bk)
    w0 = 2*pi*f0;
    T0 = 1/f0;
    t = 0:Ta:T0*Np - Ta;
    K = length(Ak);
    x = 0;
    for k = 1:K
    x = x + Ak(k) * cos(k * w0 * t) ...
       + Bk(k) * sin(k * w0 * t);
    end
    x = x/Np;
end