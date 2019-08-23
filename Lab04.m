%lab04.m
%amando garza

clear;
format short;
format compact;

%% p02
format bank;
years = 10:30;
monthly = (100000*(.0485/12))./(1-(1+.0485/12).^(-12*years));
pay = monthly * 12 .* years;
p02 = [years;monthly;pay]';
display(p02);

%% p03
format short;
k = 0.2:0.1:0.7;
b = nthroot(32000./(pi^2 * (k + 1).*(1 - 2*k + k.^2)), 3);
a = k .* b;
s = pi^2 * (b.^2 - a.^2);
p03 = [a;b;s]';
display(p03);

%% p08
format short;
t = 0:.02:.5;
x = 4.219 * (exp(-1.58*t) - exp(-6.32*t));
v = 26.67 * exp(-6.32*t) - 6.67 * exp(-1.58*t);
p08 = [t;x;v]';
display(p08);

%% p10
format bank;
r = 2:.5:6;
b = 10000 * (1 + r/100).^10;
p10 = [r;b]';
display(p10);

%% p18
format short;
t = 0:2:42;
p = 10.^(7.9622-.05223*34172./(t + 273.15));
p18 = [t;p]';
display(p18);

%% p22
format bank;
a = [-cosd(45) 0 0 1 0 0 0 0 0
    -sind(45) 0 -1 0 0 0 0 0 0
    0 -1 0 0 sind(45) 1 0 0 0
    0 0 0 -1 -cosd(48.81) 0 0 1 0 
    0 0 0 0 -sind(48.81) 0 -1 0 0
    0 0 0 0 0 0 0 0 -sind(48.81)
    0 0 0 0 0 0 0 -1 -cosd(48.81)
    0 0 0 0 0 0 1 0 sind(48.81)
    0 0 0 0 0 -1 0 0 cosd(48.81)];
b = [0;0;0;0;600;1800;0;4800;0];
p22 = [(1:length(b))' (a\b)];
display(p22);
clear a k p r t x b monthly s v years pay;

