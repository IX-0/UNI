function [X, f] = espectro(x, Ta)
    N = length(x);
    df = 1 / (Ta*N);
    f = (0:N-1)*df;
    X = fft(x)/N;
    X = fftshift(X);
end