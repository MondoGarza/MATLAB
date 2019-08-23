% lab05.m
% amando garza

close all;
clear;
format short;
format compact;

%% p01
f = @(x) (x+5).^2./(4 + 3 * x.^2);
fplot(f,[-3,5]);
ylim([0,7])
xlabel('x');
ylabel('y');
title('p01 Amando Garza');

%% p02
figure;
f = @(x) (5*sin(x))./(x + exp(-.75 * x));
fplot(f, [-5,10]);
xlabel('x');
ylabel('y');
title('p02 Amando Garza');

%% p03
figure;
subplot(2,1,1);
f =@(x) (x+1).*(x-2).*(2*x - .25) - exp(x);
fplot(f,[0,3]);
ylim([-10,5]);
xlabel('x');
ylabel('y');
title('p03a Amando Garza');
subplot(2,1,2);
fplot(f,[-3,6]);
xlabel('x');
ylabel('y');
title('p03b Amando Garza');

%% p04
figure;
f =@(x) sqrt(abs(cos(3*x))) + sin(4*x).^2;
fplot(f,[-2,2]);
xlabel('x');
ylabel('y');
title('p04 Amando Garza');

%% p05
figure;
f =@(x) exp(2*sin(.4 * x)) * 5 .* cos(4*x);
fplot(f,[-20,30]);
xlabel('x');
ylabel('y');
title('p05 Amando Garza');

%% p07
figure;
x1 = linspace(-4, -1.1, 50);
y1 = (x1.^2 + 3 * x1 + 3)./(.8 * (x1+1));
plot(x1,y1);
hold on;
x2 = linspace(-.9, 3,50);
y2 = (x2.^2 + 3 * x2 + 3)./(.8 * (x2+1));
plot(x2,y2);
xlabel('x');
ylabel('y');
title('p07 Amando Garza');

%% p08
figure;
t1 = linspace(-30,-1.6, 50);
F = @(t) (3*t)./(1 + t.^3);
t2 = linspace(-.6, 40, 450);
G = @(t) (3 * t.^2)./(1 + t.^3);
x1 = F(t1);
y1 = G(t1);
x2 = F(t2);
y2 = G(t2);
plot(x1,y1,x2,y2);
xlabel('x');
ylabel('y');
title('p08 Amando Garza');

%% p12
figure;
f = @(x) 693.8 - 68.8* cosh(x/99.7);
fplot(f, [-300, 300]);
xlabel('Length (ft)');
ylabel('Height (ft)');
title('p12 Amando Garza');

%% p18
figure;
subplot(3,1,1);
t = linspace(0,8,200);
x = .41 * t.^ 4 - 10.8 * t .^ 3 + 64 * t .^ 2 - 8.2 * t + 4.4;
plot(t, x);

xlabel('Time (s)', 'fontsize', 8);
ylabel('Pos (ft)', 'fontsize', 8);
title('p18 Amando Garza');
subplot(3,1,2);
t = linspace(0,8,200);
v = .41 * 4 * t .^ 3 - 10.8 * 3 * t .^ 2 + 64 * 2 * t - 8.2;
plot(t, v);

xlabel('Time (s)', 'fontsize', 8);
ylabel('Vel (ft/s)', 'fontsize', 8);
subplot(3,1,3);
t = linspace(0,8,200);
a = .41 * 4 * 2 * t .^ 2 - 10.8 * 3 * 2 * t + 64 * 2;
plot(t, a);

xlabel('Time (s)', 'fontsize', 8);
ylabel('Acc (ft/s^2)', 'fontsize', 8);
clear f F G a t t1 t2 v x x1 x2 y1 y2;