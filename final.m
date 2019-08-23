% final.m
% amando garza

clear;
format short;
format compact;
close all;

%% p01
t_hl = 5370;
percent = 0:1:100;
t_age = (log(percent*.01)./-.693) * t_hl;
plot(percent, t_age);
hold on;
title('amando garza');
xlabel('Carbon14 (%)');
ylabel('Age in years');
data = round((log(60*.01)./-.693) .* t_hl);
plot(60, data, '*')
text(62, data + 1000, [num2str(data), ' years old (approx)']);


%% p02
figure;
m = 0.032;
k = 8.31;
v = linspace(0,1000,20);
T = linspace(70,320,20);
[v,T] = meshgrid(v,T);
n_v = 4*pi*(m./(2*pi*k*T)).^(3/2).* v.^2 .* exp((-m*v.^2)./(2*k*T));
mesh(v,T,n_v);
title('amando garza');
xlabel('Molecules Speed(m/s)');
ylabel('Temperature(K)');
zlabel('Probability');
ylim([0,400]);

%% p03
figure;
syms t r;
t = linspace(-pi,pi,100);
x = (sin(t).*cos(t))./t;
y = sin(t).^2./t;
plot(x,y);
xlim([-.25,1.05]);
ylim([-.8,.8]);
xlabel('');
ylabel('');

figure;
x = (sin(t).*cos(t))./t - r*cos(t);
y = sin(t).^2./t - r*sin(t);
r = solve(x,r);
ezplot(r,[-pi,pi]);
area = int(.5*r.^2,-pi,pi);
area = double(area);
display(area);
title('amando garza');


%%
v = [1,2,3,4,-4,-5,2,0,-10,1000];
n = [];
p = [];
i = 1;
while i <= length(v)
    if v(i) >= 0
        p = [p,i];
    elseif v(i) < 0
        n = [n,i];
    end
    i = i + 1;
end
display(n);
display(p);
