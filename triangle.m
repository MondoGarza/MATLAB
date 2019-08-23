function area = triangle(a,b,c)
% triangle calculates area of triangle
% 
%         Input arguments: triangle(a,b,c) has three scalar input parameters,
%             a, b, c, which are the side lengths of given triangle
%         Output argument: Returns one scalar value area, that is area of given triangle
% 
%         Example:
% 
%         >> a = triangle(3,4,5)
%           a =
%             6

    s = (a + b + c)/2;
    area = sqrt(s*(s-a)*(s-b)*(s-c));
end