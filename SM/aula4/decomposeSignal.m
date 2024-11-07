function [ak,bk] = decomposeSignal(Ta, T0, x, K)
    N = length(x);
    n = 1:N;
    for k = 1:K
            bk(k) = (2/N) * sum(x .* sin(k * 2 * pi / T0 * n * Ta));
            ak(k) = (2/N) * sum(x .* cos(k * 2 * pi / T0 * n * Ta));
    end
end