function[X]= ReverseOfNegativeTransformation(im)

% this function will take an transformed image matrix and then it will
% perform the reverse of the Negative transformation which will
% give the reconstructed intensity matrix
% X=max_pixel_value-im or X=imcomplement(im)

%=================== input ======================%
% im = transformed intesity matrix

%================== output  =====================%
% X= reconstructed image intesity matrix

im=im2double(im);
X=imcomplement(im);

end