function[im]=GammaTransformation(X,gamma,c)

% we can curve the grayscale in either bright or darker intensity all these
% things depend on the value of gamma. In general y=c*f(x)^gamma. If gamma
% is smaller than 1 then the image will be brighter and as gamma increses
% from 1 the image will get darker.

%================== input ====================%
% X = the intensity matrix that is to be transformed
% gamma = a value that will decide the increase of decrease of the intensity
% c= some arbitrary constant by defualt 1
%================== output ====================%
% im= trasnformed image

if nargin<3
c=1;
end

im=c.*(im2double(X).^gamma);

% plotting the image
%original image
figure,subplot(1,2,1);
imshow(X);
title('Original Image');

%transformed image
subplot(1,2,2), imshow(im);
title('Gamma Transformed image ');

end