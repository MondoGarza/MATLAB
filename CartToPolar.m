function [th,rad] = CartToPolar(x,y)
% carttopolar converts x y coordinates to polar coordinates
% 
%         Input arguments: carttopolar(x,y) has two scalar parameters,
%             x and y
%         Output arguments: Returns two scalar values, [th, rad]
% 
%         Example:
% 
%         >> [t,r] = CartToPolar(3,4)
%           t =
%             53.1301
%           r = 
%              5

    if x<0 && y>0
       rad = sqrt(x^2 + y^2);
       th = atand(y/x) + 180;
    elseif y<0 && x<0
       rad = sqrt(x^2 + y^2);
       th = atand(y/x) - 180;
    else
       rad = sqrt(x^2 + y^2);
       th = atand(y/x); 
    end 
end