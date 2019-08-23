% lab10.m
% amando garza

clear;
format short;
format compact;
close all;

%% p01
t = linspace(0,30,200);
x = (4 - .1*t).*sin(.8*t);
y = (4 - .1*t).*cos(.8*t);
z = 0.4 * t.^(3/2);
plot3(x,y,z);
title('p01 amando garza');
xlabel('X');
ylabel('Y');
zlabel('Z');

%% p04
figure;
x = linspace(-3,3,20);
y = linspace(-3,3,20);
[x,y] = meshgrid(x,y);
z = x.^2/3 + 2*sin(3*y);
mesh(x,y,z);
title('p04 amando garza');
xlabel('X');
ylabel('Y');
zlabel('Z');

%% p05
figure;
x = linspace(-2,2,20);
y = linspace(-2,2,20);
[x,y] = meshgrid(x,y);
z = .5 * abs(x) + abs(y) * .5;
surfl(x,y,z);
title('p05 amando garza');
xlabel('X');
ylabel('Y');
zlabel('Z');

%% p06
figure;
x = linspace(-10,10,100);
y = linspace(-10,10,100);
[x,y] = meshgrid(x,y);
r = sqrt(x.^2 + y.^2);
z = sin(r)./r;
surfl(x,y,z);
title('p06 amando garza');
xlabel('X');
ylabel('Y');
zlabel('Z');

%% p08
figure;
k = .01;
x = linspace(-3,3,50);
y = linspace(-3,3,50);
[x,y] = meshgrid(x,y);
w = k * (x.^2 - y.^2);
surfl(x,y,w);
title('p08 amando garza');
xlabel('X');
ylabel('Y');
zlabel('w');
clear k r t w x y z;
