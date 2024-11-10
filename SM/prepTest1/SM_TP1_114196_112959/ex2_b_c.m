[s, Fa] = exame(1999,2);

N = 800;

Ta = 1/Fa;          %eixo do tempo
t = [0:799] * Ta;

plot(t,s)
xlabel("tempo(s)")
ylabel("x(t)")

df=Fa/N;            %eixo da frequencia
f=(0:(N-1))*df-Fa/2;
X=fftshift(fft(s))/N;

plot(f, abs(X));    
xlabel("Frequência (Hz)")
ylabel("Amplitude")
grid;
