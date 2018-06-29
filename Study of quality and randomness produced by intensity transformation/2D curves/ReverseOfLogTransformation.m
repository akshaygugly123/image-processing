function [X]= ReverseOfLogTransformation(im,c)

% this function will take an transformed image matrix and then it will
% perform the reverse of the Log transformation which will
% give the reconstructed intensity matrix
% X=exp(im/c)-1;

%=================== input ======================%
% im = transformed intesity matrix
% c  have same value as that used in log transformation

%================== output  =====================%
% X= reconstructed image intesity matrix

im=im2double(im);
if nargin<2
    c=1;
end

X=exp(im/c)-1;

end