function[im]=LogTransformation(X,c)

% The basic equation for log tranformation is s=c*log(1+X) where c is a
% constant and X is the intensity (here it is intensity matrix.
% Here we will perform logarithmic transformation by taking intensity
% matrix and the constant c that can be any any arbitrary value

%================== input ====================%
% X=the intensity matrix that is to be transformed
% c=some constant
%================== output ====================%
% im=transformed intensity matrix

if nargin<2
c=1;
end

X2=im2double(X);
im=c*log(1+(X2));

%plotting the images

figure, subplot(1,2,1) , imshow(X),title('Original Image');
subplot(1,2,2),imshow(im), title('Log Transformed Image');


end