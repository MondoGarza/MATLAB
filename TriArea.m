function [area] = TriArea(a,b,c)
% triarea calculates area of triangle
% 
%         Input arguments: triarea(a,b,c) has three vector input arguments,
%             which are vectors of length 3 that are the coordinates a,b,c that
%             describe the given triangle
%         Output argument: Returns scalar value area of given triangle
% 
%         Example:
% 
%         >> A = [0,0,0]; B = [0,3,0]; C = [0,0,4];
%         >> a = TriArea(A,B,C)
%           a =
%             6

    cross_p = cross(b-a, c-a);
    mag = sqrt(sum(cross_p.^2));
    area = .5 * mag;
end