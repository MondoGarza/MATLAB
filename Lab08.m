% lab08.m
% amando garza

clear;
format short;
format compact;
close all;

%% p01
figure;
x = linspace(-5,4,100);
p = [-.4, 0, 7, -20.5, -28];
y = polyval(p,x);
plot(x, y);
title('p01 amando garza');
xlabel('x');
ylabel('y');

%% p02
figure;
x = linspace(1,14,100);
p = [-.001, .051, -.76, 3.8, -1.4];
y = polyval(p,x);
plot(x,y);
title('p02 amando garza');
xlabel('x');
ylabel('y');

%% p03
u = [2, 0, 3];
w = [1, 3.5, 5, -16];
p03 = round(conv(u, w));
display(p03);

%% p04
figure;
x = linspace(-1.5, 1.5, 100);
u = conv([1, 1.4], [1, -.4]);
w = conv([1, .6], [1, -1.4]);
y = polyval(conv(u,w), x);
plot(x,y);
title('p04 amando garza');
xlabel('x');
ylabel('y');

%% p05
u = [-.6, 0, 7.7, -8, -24.6, 48];
w = [-.6, 0, 4.1, -8];
[p05q, p05r] = deconv(u, w);
display(p05q);
display(p05r);

%% p06
u = [1, -6, 13, -12, 4];
w = [1, -3, 0, 2];
[p06q, p06r] = deconv(u, w);
display(p06q);
display(p06r);

%% p07
p1 = [1 0];
p2 = [1 1];
p3 = [1 2];
p12 = conv(p1, p2);
p123 = conv(p12, p3);
p123(length(p123)) = -1716;
r = roots(p123);
n = r(r==abs(real(r)));
p07 = [n n+1 n+2];
display(p07);

%% p08
p1 = [1 0];
p2 = [1 2];
p3 = [1 4];
p4 = [1 6];
p12 = conv(p1, p2);
p123 = conv(p12, p3);
p1234 = conv(p123, p4);
p1234(length(p1234)) = -13440;
r = roots(p1234);
n = r(r==abs(real(r)));
p08 = round([n n+2 n+4 n+6]);
display(p08);

%% p18
figure;
h = [0 2000 5000 7500 10000 20000 26000];
t = [212 210 203 198 194 178 168];
plot(h, t, 'ob');
hold on;
p18h = polyfit(h, t, 1);
p18t = polyval(p18h, 16000);
plot(h, polyval(p18h, h), 'b');
hold on;
plot(16000, p18t,'*r');
title('p18 amando garza');
xlabel('x');
ylabel('y');
display(p18t);
display(p18h);

%% p22
figure;
x = [-5, -3.4, -2, -.8, 0, 1.2, 2.5, 4, 5, 7, 8.5];
y = [4.4, 4.5, 4, 3.6, 3.9, 3.8, 3.5, 2.5, 1.2, .5, -.2];
subplot(2,2,1);
plot(x, y, 'ob');
hold on;
p22a = polyfit(x, y, 1);
yfit = p22a(1) * x + p22a(2);
plot(x, yfit, 'g');
title('p22a');
xlabel('x');
ylabel('y');

subplot(2,2,2);
plot(x, y, 'ob');
hold on;
p22b = polyfit(x, y, 2);
plot(linspace(x(1), x(length(x))) ,polyval(p22b, linspace(x(1), x(length(x)))), 'g');
title('p22b');
xlabel('x');
ylabel('y');

subplot(2,2,3);
plot(x, y, 'ob');
hold on;
p22c = polyfit(x, y, 4);
plot(linspace(x(1), x(length(x))) ,polyval(p22c, linspace(x(1), x(length(x)))), 'g');
title('p22c');
xlabel('x');
ylabel('y');

subplot(2,2,4);
plot(x, y, 'ob');
hold on;
p22d = polyfit(x, y, 8);
plot(linspace(x(1), x(length(x))) ,polyval(p22d, linspace(x(1), x(length(x)))), 'g');
title('p22d');
xlabel('x');
ylabel('y');

%% p24
figure;
x = [.5, 2.4, 3.2, 4.9, 6.5, 7.8];
y = [.8, 9.3, 37.9, 68.2, 155, 198];
plot(x, y, 'ob');
hold on;
p = polyfit(log(x),log(y),1);
p24b = exp(p(2));
p24m = p(1);
display(p24b);
display(p24m);
xfit = linspace(x(1), x(length(x)), 30);
yfit = p24b * xfit.^p24m;
plot(xfit, yfit, 'g');
xlabel('x');
ylabel('y');
title('p24 amando garza')
clear n h p equ r u x t w xfit xlog yfit;
clear y p1 p12 p123 p1234 p2 p3 p4 p22a p22b p22c p22d;
