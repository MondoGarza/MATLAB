% lab01.m
% amando garza

clear;
format short;
format compact;

%% p01
p01 = ((14.8^2 + 6.5^2)/ 3.8^2)+(55/(sqrt(2) + 14));
display(p01);

%% p02
p02 = (-3.5)^3 + exp(6)/log(524) + 206^(1/3);
display(p02);

%% p03
p03 = (16.5^2) * (8.4 - sqrt(70))/(4.3^2 -17.3);
display(p03);

%% p04
p04 = (5.2^3 - 6.4^2 + 3)/(1.6^8 - 2) + (13.3/5)^1.5;
display(p04);

%% p05
p05 = 15 * ((sqrt(10) + 3.7^2)/(log10(1365) + 1.9));
display(p05);

%% p06
p06 = (2.5^3 * (16 - 216/22))/(1.7^4 + 14) + nthroot(2050, 4);
display(p06);

%% p07
p07 = 2.3^2 * 1.7/sqrt((1-.8^2)^2 + (2 - sqrt(.87))^2);
display(p07);

%% p08
p08 = 2.34 + 1/2 * 2.7 * (5.9^2 - 2.4^2) + 9.8 * log(51);
display(p08);

%% p09
p09 = sin(7*pi/9)/cos((5/7) * pi)^2 + (1/7) * tan((5/12) * pi);
display(p09);

%% p10
p10 = tand(64)/cosd(14)^2 - 3*sind(80)/nthroot(.9, 3) + cosd(55)/sind(11);
display(p10);

%% p11ab
x = 2.34;
p11a = (2*(x^4))-(6*(x^3))+(14.8*(x^2))+9.1;
display(p11a);
p11b = (exp(2*x))/sqrt(14+(x^2)-x);
display(p11b);
clear x;

% p12ab
t = 6.8;
p12a = log(abs((t^2) - (t^3)));
display(p12a);
p12b = (75 / (2*t)) * cos((0.8 * t) - 3);
display(p12b);
clear t;

% p13ab
x = 8.3;
y = 2.4;
p13a = (x^2) + (y^2) - (x^2)/(y^2);
display(p13a);
p13b = sqrt(x*y) - sqrt(x+y) + ((x-y)/(x-2*y))^2 - sqrt(x/y);
display(p13b);
clear x y;

% p14ab
a = 13;
b = 4.2;
c = (4*b)/a;
d = (a * b * c)/(a + b + c);

p14a = (a * (b/(c + d))) + (d*a)/(c*b) - (a - b^2)*(c + d);
display(p14a);
p14b = sqrt(a^2 + b^2)/(d-c) + log(abs(b - a + c - d));
display(p14b);
clear a b c d;

% p15ab
p15a = log(.085)/log(4);
p15b = log(1500)/log(6);
display(p15a);
display(p15b);
