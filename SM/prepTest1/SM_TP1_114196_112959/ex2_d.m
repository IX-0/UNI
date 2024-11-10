[s, Fa] = exame(1999,2);

N = 800;

s1 = s+2;

Ta = 1/Fa;          %eixo do tempo
t = [0:799] * Ta;

plot(t,s1)
xlabel("tempo(s)")
ylabel("x(t)")

df=Fa/N;            %eixo da frequencia
f=(0:(N-1))*df-Fa/2;
X=fftshift(fft(s1))/N;

plot(f, abs(X));
xlabel("Frequência (Hz)")
ylabel("Magnitude")
grid;