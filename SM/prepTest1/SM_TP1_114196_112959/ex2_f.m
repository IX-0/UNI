[s, Fa] = exame(1999,2);

N = 800;

Ta = 1/Fa;          %eixo do tempo
t = [0:799] * Ta;

df=Fa/N;            %eixo da frequencia
f=(0:(N-1))*df-Fa/2;
X=fftshift(fft(s))/N;

H = zeros(1,length(f));
H((f>29.9) & (f<30.1)) = 1;
H((f>-30.1) & (f<-29.9)) = 1;
X_final = H.*X;

[w,t] = Reconstroi(X_final,f);

w = real(w);

plot(f, abs(H));
xlabel("Frequência (Hz)")
ylabel("Amplitude")
grid;

figure (2)      %figure do dominio tempo filtrado
plot(t,w)
xlabel("Tempo(s)")
ylabel("x(t)")
