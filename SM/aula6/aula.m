%% EX 2

fa = 5; %Hz
Ta = 1/fa;
T0 = 5;

t = 0:Ta:T0;
x = sin(2*pi*t);

ReconstroiSinal(x, Ta);

pause(2);

fa = 25; %Hz
Ta = 1/fa;
T0 = 5;

t = 0:Ta:T0;
x = sin(10*pi*t) ...
    + cos(12*pi*t) ...
    + cos (14*pi*t - pi/4);

ReconstroiSinal(x, Ta);