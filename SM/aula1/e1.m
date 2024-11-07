t = 0:0.001:2;

x = 2 * sin(4 * pi * t);
%A = 2, f = 2, T = 1/f = 0.5, phi = 0

y = sin(10 * pi * t + pi/2);
%A = 1, f = 5, T = 1/f = 0.2, phi = pi/2

p = sin(20 * pi * t + 70 * pi / 180) ...
    + sin(20 * pi * t + 200 * pi / 180);
fp = gcd(10, 10); % f = 10
%A = 1, f = 10, T = 0.1

z = sin(6 * pi * t ) + sin(8 * pi * t);
fz = gcd(3, 4);
%A = 1, f = 1, T = 1

hold on
plot(t, x);
plot(t, y);
plot(t, p);
plot(t, z);
hold off