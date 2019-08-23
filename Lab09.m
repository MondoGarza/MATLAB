% lab09.m
% amando garza

clear;
format short;
format compact;
close all;

%% p01
f = @(x) exp(.5 * x) - sqrt(x) - 3;
fplot(f, [1,5]);
hold on;
p01r = fzero('exp(.5 * x) - sqrt(x) - 3', 3);
plot(p01r, 0,'or');
text(p01r+.05, 0, strcat('(', num2str(p01r), ', 0)'));
title('p01 amando garza');
xlabel('x');
ylabel('y');

%% p02
figure;
f = @(x) 3 + 3*sin(x) - 0.5*x.^3;
fplot(f, [0,5]);
hold on;
p02r = fzero('3 + 3*sin(x) - 0.5*x^3', 3);
display(p02r);
plot(p02r, 0,'or');
text(p02r+.1, .5, strcat('(', num2str(p02r), ', 0)'));
ylim([-70, 10]);
title('p02 amando garza');
xlabel('x');
ylabel('y');

%% p03
figure;
f = @(x) x.^3 - 8*x.^2 + 17*x + sqrt(x) - 10;
fplot(f, [0.5,5]);
hold on;
p03r = fzero('x^3 - 8*x^2 + 17*x + sqrt(x) - 10', .7);
p03r = [p03r, fzero('x^3 - 8*x^2 + 17*x + sqrt(x) - 10', 2.5)];
p03r = [p03r, fzero('x^3 - 8*x^2 + 17*x + sqrt(x) - 10', 4.7)];
display(p03r);
plot([p03r(1), p03r(2), p03r(3)], [0,0,0],'or');
text(p03r(1)+.1, 0, strcat('(', num2str(p03r(1)), ', 0)'));
text(p03r(2)+.1, 0, strcat('(', num2str(p03r(2)), ', 0)'));
text(p03r(3)+.1, 0, strcat('(', num2str(p03r(3)), ', 0)'));
title('p03 amando garza');
xlabel('x');
ylabel('y');

%% p04
figure;
f = @(x) x.^2 - 5*x.*sin(3*x) + 3;
fplot(f, [0,6]);
p04r = fzero('x^2 - 5*x*sin(3*x) + 3', 2.1);
p04r = [p04r, fzero('x^2 - 5*x*sin(3*x) + 3', 2.8)];
display(p04r);
hold on;
text(1.6, 0, strcat('(', num2str(p04r(1)), ', 0)'));
text(p04r(2)+.1, 0, strcat('(', num2str(p04r(2)), ', 0)'));
plot([p04r(1), p04r(2)], [0,0],'or');
ylim([-10,70]);
title('p04 amando garza');
xlabel('x');
ylabel('y');

%% p09
figure;
f = @(x) (x-2)./((x-2).^4+2).^1.8;
max_f = @(x) -1*((x-2)./((x-2).^4+2).^1.8);
fplot(f, [0,9]);
hold on;
p09xmin = fminbnd(f, 1.1,1.4);
p09xmax = fminbnd(max_f, 2.6,2.9);
p09ymin = f(p09xmin);
p09ymax = f(p09xmax);
plot([p09xmin, p09xmax], [f(p09xmin), f(p09xmax)], 'or');
text(p09xmin+.2, p09ymin, strcat('(', num2str(p09xmin), ', ', num2str(p09ymin),')'));
text(p09xmax+.2, p09ymax, strcat('(', num2str(p09xmax), ', ', num2str(p09ymax),')'));
title('p09 amando garza');
xlabel('x');
ylabel('y');
ylim([-.2, .2])
display(p09xmin);
display(p09ymin);
display(p09xmax);
display(p09ymax);

%% p16
f = @(x) 2*x.^2./sqrt(1+x);
p16 = integral(f, 1, 6);
display(p16);

%% p17
f = @(x) cos(2*x)./x;
p17 = integral(f, 1, 2);
display(p17);

%% p18
f = @(x) exp(2*x)./x;
p18 = integral(f, 1, 2);
display(p18);

%% p19
f = @(x) exp(-x.^2);
p19 = integral(f, -1, 1);
display(p19);

%% p20
t = [0,1,2,3,4,5,6,7];
v = (([0,14,39,69,95,114,129,139]/60)/60) * 5280;
p20 = trapz(v);
display(p20);

%% p24
v = [0,40,96,140,147,121,117,139,140,62,18, 0];
p24 = trapz(40, v);
display(p24);

%% p29
figure;
ode = @(x,y) sqrt(x)+x^2*sqrt(y)/4;
[x,y] = ode45(ode, (1:.1:3), 1);
plot(x,y);
title('p29 amando garza');
xlabel('x-axis');
ylabel('y-axis');

%% p30 
figure;
ode = @(x,y) sqrt(x*y) - 0.5*y*exp(-.1*x);
[x,y] = ode45(ode, (0:.1:4), 6.5);
plot(x,y);
title('p30 amando garza');
xlabel('x-axis');
ylabel('y-axis');

%% p31
figure;
ode = @(t,y) 80*exp(-1.6*t).*cos(4*t) - 0.4*y;
[x,y] = ode45(ode, (0:.01:4), 0);
plot(x,y);
title('p31 amando garza');
xlabel('x-axis');
ylabel('y-axis');

%% p38
figure;
ode = @(t,a) .8*a*(1-(a/60)^.25);
[x, y] = ode45(ode, (0:.5:30), 1);
plot(x,y);
title('p38 amando garza');
xlabel('x-axis');
ylabel('y-axis');
clear f ode max_f t v x y;
