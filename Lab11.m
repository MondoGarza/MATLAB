% lab11.m
% amando garza

clear;
format short;
format compact;
close all;

%% p01
syms x;
s1 = x^2*(x-6)+4*(3*x-2);
s2 = (x+2)^2-8*x;
p01a = simplify(s1*s2);
display(p01a);
ezplot(p01a);
hold on;
p01b = simplify(s1/s2);
display(p01b);
ezplot(p01b);
hold on;
p01c = simplify(s1+s2);
display(p01c);
ezplot(p01c);
p01d = subs(p01c, x, 5);
display(p01d);
title('p01 amando garza');
xlabel('X');

%% p02
figure;
syms x;
s1 = x*(x^2+6*x+12)+8;
s2 = (x-3)^2+10*x-5;
p02a = simplify(s1*s2);
display(p02a);
ezplot(p02a);
hold on;
p02b = simplify(s1/s2);
display(p02b);
ezplot(p02b);
hold on;
p02c = simplify(s1+s2);
display(p02c);
ezplot(p02c);
xlim([-6,6]);
ylim([-300,300]);
p02d = subs(p02c, x, 3);
display(p02d);
title('p02 amando garza');
xlabel('X');

%% p03
figure;
syms x y;
s = x + sqrt(x)*y^2 + y^4;
t = sqrt(x)-y^2;
p03 = simplify(s*t);
p03 = subs(p03, [x,y], [9, 2]);
display(p03);

%% p04
syms x;
a = (x+2)*(x+.5)*(x-2)*(x-4.5);
p04a = collect(a);
display(p04a);
b = x^6 - 6.5*x^5 - 58*x^4 + 167.5*x^3 + 728*x^2 - 890*x - 1400;
p04b = factor(b);
display(p04b);

%% p05
syms x y;
p05a = 4*sin(x)*cos(x) - 8*sin(x).^3*cos(x);
p05a = simplify(p05a);
display(p05a);
p05b = .5*(cos(x-y)+cos(x+y));
p05b = simplify(p05b);
display(p05b);

%% p06
syms x y z;
p06a = (3*tan(x)-tan(x)^3)/(1-3*tan(x)^2);
p06a = simplify(p06a);
display(p06a);
p06b1 = sin(x)*cos(y)*cos(z) + cos(x)*sin(y)*cos(z);
p06b2 = cos(x)*cos(y)*sin(z) - sin(x)*sin(y)*sin(z);
p06b = simplify(p06b1+p06b2);
display(p06b);

%% p07
figure;
syms x y t;
ezplot(x^3+y^3-3*x*y);
x = 3*t/(1+t.^3);
y = 3*t.^2/(1+t.^3);
equ = 3*x*y;
p07a = simplify(equ);
p07b = simplify(equ);
display(p07a);
display(p07b);
xlim([-2,2]);
ylim([-3,2]);
title('p07 amando garza');

%% p08
syms r h;
h = 10;
vol = 1050;
equ1 = @(r) 2/3 * pi * r^3 + pi*r^2*h;
equ = 2/3 * pi * r^3 + pi*r^2*h == vol;
f = solve(equ,r);
p08 = double(f)';
p08 = p08(roots(p08) > 0);
display(p08);

%% p10
figure;
syms x y;
ezplot((x-1)^2/6^2 + y^2/3^2 - 1, [-6, 8]);
hold on;
ezplot((x+2)^2/2^2 + (y-5)^2/4^2 - 1,[-6,9]);
title('p10 amando garza');
xlim([-6,8]);
ylim([-6,10]);
s1 = (x-1)^2/6^2 + y^2/3^2 - 1;
s2 = (x+2)^2/2^2 + (y-5)^2/4^2 - 1;
[xs,ys] = solve(s1,s2,x,y);
x0 = double(xs);
y0 = double(ys);
x0 = round(x0(x0==real(x0)),2);
y0 = round(y0(y0==real(y0)),2);
plot(x0,y0,'ob');
text(x0(1,1) + .18, y0(1,1), ['(', num2str(x0(1,1)), ', ', num2str(y0(1,1)), ')']);
text(x0(2,1) + .18, y0(2,1), ['(', num2str(x0(2,1)), ', ', num2str(y0(2,1)), ')']);

%% p16
syms x;
p16a = int(x^3/sqrt(1-x^2));
display(p16a);
p16b = int(x^2*cos(x));
display(p16b);

%% p17
syms x;
equ = cos(x)^2/(1 + sin(x)^2);
equ1 =@(x) cos(x)^2/(1 + sin(x)^2);
ezplot(equ,[0,pi]);
hold on;
x = round(fminbnd(equ1, 1.2, 1.6),2);
plot(x,0,'or');
text(x+.05,-.02, ['(',num2str(x), ', 0.00) min']);
title('p17 amando garza')
p17 = double(int(equ,0,pi));
display(p17);
clear equ equ1 equ2 equ3 f h n int1 int2;
clear r v vol x t s_str a b s s1 s2 x0 y0;
clear z ys y xs p06b1 p06b2;