function[X]=ReverseOfGammaTransformation(im,gamma,c)

% this function will take an transformed image matrix and then it will
% perform the reverse of the Gamma transformation which will
% give the reconstructed intensity matrix
% X= exp( log(im/c)/gamma);

%=================== input ======================%
% im = transformed intesity matrix
% gamma ,and
% c have same meaning as used in contrast stretching

%================== output  =====================%
% X= reconstructed image intesity matrix

if nargin<3
    c=1;
end

im=im2double(im);
X=exp(log(im/c)/gamma);

end