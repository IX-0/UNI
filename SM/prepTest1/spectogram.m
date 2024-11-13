fa = 1000;
ta = 1/fa;
N = 1e4;
[x,t] = geraSinal(N,ta);

subplot(211);
spectrogram(x,128,64,128,fa, "yaxis")
subplot(212);

[X, f] = espectro(x,ta);
filtro = zeros(length(X),1);
filtro(abs(f) < 1.5) = 1;
X_filtered = X.*filtro;

[x_filtered, t_filtered] = reconstroiIfft(X_filtered,f);

%Parametros por ordem:
%   Tamanho da secção
%   Numero de amostras de sobreposição
%   Numero de frequencias a representar
spectrogram(x_filtered,128,64,128,fa, "yaxis");