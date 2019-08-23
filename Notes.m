% How to solve ordinary differential equations,initial value problems (IVP)
% given dy/dx = (x^3 - 2y)/x for 1<=x<=3 when y(1) is 4.2
nonstiff = {'ode45'; 'ode23'; 'ode113'; ''}; %solution is gradual over given domain
stiff = {'ode15'; 'ode23s'; 'ode23t'; 'ode23tb'}; %solution changes rapidly and also very little over given domain
ODE_solvers = table(nonstiff, stiff);
display(ODE_solvers);

f = @(x,y) (x.^3 - 3*y)./x;
[x,y] = ode45(f, [1,3], 4.2); %ode45(anonymous func., point interval or linspace, value)
plot(x, y, 'b');
hold on;
plot(1, 4.2, 'or');

% Ch10 lab10 MATLAB 3D plotting
% >>plot3 (simliar to plot except takes xyz coords.)

% >>meshgrid (somewhat different, requires different setup)

%% plot3, example spiral cylinder
t = linspace(0, pi*10, 1000);
r = 1;
x = 2 + 3*t;
y = -1 + 2*t;
z = .2 * t;
plot3(x,y,z);

%% meshgrid , grid example
x = linspace(-3,3,20);
y = linspace(-3,3,20);
[x,y] = meshgrid(x,y);
z = x.^2 + y.^2;
mesh(x,y,z);
surf(x,y,z);
surfl(x,y,z);

% z = peaks(25);
% figure;
% surfl(z);
% colormap(pink);    % change color map
% shading interp; 