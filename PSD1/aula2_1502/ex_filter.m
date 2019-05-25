%% Sinal de entrada x(t)
t = linspace(-pi,pi,100);
rng default
x1 = sin(t);
x2 = 0.25*rand(size(t));
x = x1 + x2;
%plot(t,x); hold on
plot(t, x1, t, x2, t, x, ':k')

%% Filtro media movel b(n)
windowSize = 4.3;
windowSize = ceil(windowSize);
b = (1/windowSize)*ones(1,windowSize);
a = 1;
y = filter(b,a,x);

% Plots
plot(t,x)
hold on
plot(t,y)

grid on
legend('Input Data','Filtered Data','Location','NorthWest')
title('Plot of Input and Filtered Data')
hold off