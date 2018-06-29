function [diff]= absolutediff(im,X)

% this absolutediff function is used when we have to find the absoluted
% diff between the original intensities to the trasnformed intesntities
% before the conversion into 0's and 1's after which the randomness is to
% be found

%================== input ====================%
% im=original intesity matrix
% X= transformed intesity matrix

%================== output ====================%
% diff= absolute differce between original matrix to transformed matrix

diff=abs(im-X);

end