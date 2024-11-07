N = 1e6;
p = 0:0.005:0.5;

for i = 1:length(p)
    two_m(i) = avioes(2,p(i),N);
    four_m(i) = avioes(4,p(i),N);
end

hold on
plot(p,four_m)
plot(p,two_m)
hold off
legend("4 motores","2 motores")


