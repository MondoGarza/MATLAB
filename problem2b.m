function y = problem2b(x)
% problem2b evaluates the function, -0.2x^4 + e^(-0.5x) * x^3 + 7x^2 
% 
%         Input argument: problem2b(x) has one vector input parameter, x
%         Output argument: Returns one vector, y
% 
%         Example:
% 
%         >> y = problem2b([-1,0,1])
%             y =
%               5.1513
%               0
%               7.4065

    y = -.2 * x.^4 + exp(-.5.*x).*x.^3 + 7*x.^2;
end