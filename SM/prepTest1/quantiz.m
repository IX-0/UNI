fa = 100;
Ta=1/fa;
t=0:Ta:5;
x=sin(2*pi*t);
[y,T] = reconstroiSinc(x,Ta);

nbits=5;
npart=2^nbits;
A=2*max(abs(y));
delta=A/npart;

parts = -A/2+delta:delta:A/2-delta;
codebook = -A/2+delta/2:delta:A/2;

[index , quants] = quantiz(y,parts,codebook);

plot(T,y,T,quants);