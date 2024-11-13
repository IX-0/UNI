function [y,t] = reconstroiSinalSincIgor(x,Ta)
    N = length(x);
    T_rec = Ta/100;
    t = 0:T_rec:Ta*(N-1);
    fa = 1/Ta;
    y = 0;
    for n = 0:N-1
        k = fa * (t - n*Ta + 1e-7);
        y = y + x(n+1)*sin(pi * k)./(pi * k);
    end
    plot(t,y);
end