function mps = mphTOmets(mph)
% mphtomets converts miles per hour to meters per second
% 
%         Input argument: mphtomets(mph) has one scalar input parameter,
%             mph (miles per hour)
%         Output argument: Returns one scalar return value, mps (meters per second)
% 
%         Example:
% 
%         >> m = mphTOmets(10)
%           m = 
%             4.4704

    mps = ((mph * 1609.34)/60)/60;
end