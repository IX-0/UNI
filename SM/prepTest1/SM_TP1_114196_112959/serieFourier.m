function sinal_resultante = serieFourier(Ta, f0, Np, Ck)
    total = Np * 1/f0;
 
    t = 0:Ta:total-Ta;
    
    sinal_resultante = zeros(1, length(t));
    
    for k = 1:length(Ck) - round(length(Ck)/2)
        sinal_resultante = sinal_resultante + Ck(k) * exp(1i * 2 * pi * k * f0 * t);
    end
    
    sinal_resultante = real(sinal_resultante) / Np;
    
    figure (1)
    plot(t, sinal_resultante);
    xlabel('Tempo');
    ylabel('Amplitude');
    title('Sinal série de Fourier');
end
