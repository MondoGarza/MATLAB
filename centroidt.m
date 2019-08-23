function yc = centroidt(w,h,d,t)
% centroidt calculates centroid along y axis
% 
%         Input arguments: centroidt(w,h,t,d) has four scalar input arguments
%             parameters that describe tee shape,
%                 w is overall width of tee
%                 h is overall height of tee
%                 t is thickness of beam on top of tee
%                 d is width of vertical tee post 
%         Output argument: Returns one scalar y, that is the centroid along the y axis
% 
%         Example:
% 
%         >> y = centroidT(4,3,2,1)
%           y =
%             1.8333

    top_area = w * t;
    bottom_area = (h - t) * d;
    yc = (top_area * ((h - t) + .5 * t) + bottom_area * ((h - t)/2))/(top_area + bottom_area);
end