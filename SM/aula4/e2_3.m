Ta = 0.001;
f0 = 1;
Np = 6;
K = 100;
k = 1:K;
ak = zeros(1,K);
bk = 4./(pi*k);
bk(2:2:end) = 0;

[x1, t] = composeSignal(Ta,f0,Np,ak,bk);
subplot(2,1,1)
plot(t, x1);

[ak, bk] = decomposeSignal(Ta, 1/f0, x1, K);
[x2, t] = composeSignal(Ta,f0,Np,ak,bk);

subplot(2,1,2)
plot(t, x2);