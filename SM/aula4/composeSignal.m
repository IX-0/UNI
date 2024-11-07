function [x, t] = composeSignal(Ta, f0, Np, ak, bk)
    w0 = 2*pi*f0;
    t = 0:Ta:Np/f0;
    K = length(ak);
    x = 0;
    for k = 1:K
    x = x + ak(k) * cos(k * w0 * t) ...
       + bk(k) * sin(k * w0 * t);
    end
end