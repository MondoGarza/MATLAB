%lab03.m
%amando garza

clear;
format short;
format compact;

%% p01
x = (-2:4);
p01 = x.^3 - 2*x.^2 + x;
display(p01);

%% p03
x = (1:7);
p03 = (x-3).*(x.^2 + 3)./x.^2;
display(p03);

%% p05
p05 = [(1:8);((.85.^(1:8) .* sqrt(2 * 9.81 .* 2)) ./ 9.81)]';
display(p05);

%% p11
%vectors
u = [-3 8 -2];
v = [6.5 -5 -4];

%p11a
p11a = sum(u .* v);
display(p11a);

%p11b
p11b = u * v';
display(p11b);

%p11c
p11c = dot(u,v);
display(p11c);

%% p12
%vector
v = [2 4 6 8 10];

%p12a
format rat
p12a = 1./v;
display(p12a);

%p12b

p12b = 1 ./ (v.^2);
display(p12b);

%p12c

p12c = v./2;
display(p12c);

%p12d
p12d = v.^0;
display(p12d);

%% p13
format short;
%vector
v = (5:-1:1);

%p13a
p13a = v.^2;
display(p13a);

%p13b
p13b = v.^v;
display(p13b);

%p13c
p13c = v * 5;
display(p13c);

%p13d
p13d = v -1;
display(p13d);

%% p15
%scalars
p = 2.3;
w = 5.67;
%vectors
t = 1:5;
x = linspace(2.8,1.6,5);
y = [4:3:13 17];

% p15a
p15a = (p * (x + y).^2 ./ y) * w;
display(p15a);

% p15b
p15b = (p * (x + y).^2 ./ (y * w)) + (w * x .* t) ./ (p * y);
display(p15b);

%% p19
%variables
t = 1:5:31;
%functions
x = 162 * cosd(70) * t;
y = 162 * sind(70) * t - .5 * 9.81 * t.^2;
theta = atand(y./x);
p19 = [sqrt(x.^2 + y.^2);theta]';
display(p19);

%% p23
format long;
p23a = sum(1 ./ 2.^(1:10));
display(p23a);

%% p24
p24a = sqrt(12) * sum((-3).^-(0:10)./(2*(0:10)+1));
display(p24a);

%% p31
format short;
p31 = [3 -2 5; -4.5 2 3; 5 1 -2.5]\[7.5;5.5;4.5];
display(p31);

%% p32

p32 = [3 1.5 1 .5 4
    -2 1 4 -3.5 2
    6 -3 2 2.5 1
    1 4 -3 .5 -2
    3 2 -1 1.5 -3]\[-11.75;19;-23;-1.5;-3.5];
display(p32);
clear p t u w y theta v x;

