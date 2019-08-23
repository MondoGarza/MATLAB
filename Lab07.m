% lab07.m
% amando garza

clear;
format short;
format compact;


%% p01
p01b = kmlTOmpg(14)
help kmlTOmpg

%% p02
p02b = problem2b([-1,0,1])
help problem2b

%% p04
p04 = mphTOmets(55)
help mphtomets

%% p06
p06a = triangle(3,8,10)
help triangle

%% p18
p18b = TriArea([-1.5,-4.2,-3],[-5.1,6.3,2],[12.1,0,-0.5])
help TriArea

%% p25
[th,rad] = CartToPolar(5, 2);
p25a = [th, rad]

[th,rad] = CartToPolar(-2, 3);
p25b = [th, rad]

[th,rad] = CartToPolar(-4,-8);
p25c = [th, rad]

[th,rad] = CartToPolar(4,-3);
p25d = [th, rad]
help CartToPolar

%% p34

p34 = centroidt(240,380,42,60)
help centroidt
clear rad th;

