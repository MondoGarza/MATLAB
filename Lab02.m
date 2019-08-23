%lab02.m
%amando garza

clear;
format short;
format compact;

%% p01

p01 = [sqrt(5.2^3) 6.71*10^3 (3 + 5.1^2)*cosd(53) 15.8 nthroot(90, 3) sin(pi/3)/tand(20)];
display(p01);

%% p02

p02 = [2.1*10^-2; sin(1.7*pi); 28.5; 2.7^(4/3); exp(3)];
display(p02);

%% p03

p03 = [0.75*5.2^0.7 11.1 nthroot(60, 3) tan(10*pi/11) cosd(5)^2 0.116]';
display(p03);

%% p04

p04 = 3:4:27;
display(p04);

%% p05

p05 = linspace(68,12,8);
display(p05);

%% p06

p06 = (6.4:.8:12)';
display(p06);

%% p07

p07 = linspace(7, 7, 9);
display(p07);

%% p08

p08(1:8) = 8;
display(p08);

%% p09

p09(:,4:7) = 7;
display(p09);
 
%% p10

p10(:,7) = 2.5;
display(p10);

%% p11

p11(1:17) = [0:8 7:-1:0];
display(p11);

%% p12

p12 = [0:5:30;600:-100:0;0:5/6:5];
display(p12);

%% p13

p13(1:5,1:2:3) = [(1:5)' linspace(3,3,5)']; 
display(p13);

%% p14

p14(3,5) = 8;
display(p14);

%% p15

p15(2:3,4:5) = 6;
display(p15);

%% p16

p16(2:4,3:5) = [1:3;4:6;7:9];
display(p16);

%% p17

p17(2:4,3:5) = [(1:3)' (10:-2:6)' (20:6:32)'];
display(p17);

%% p18

p18([1:2,4], 1:4) = 1;
display(p18);
%% p19

p19 = [diag(linspace(1,1,2)) zeros(2,1) ones(2,2)];
display(p19);
%% p20

p20 = [zeros(2,2) ones(2,2);zeros(1,4);ones(1,4)];
display(p20);