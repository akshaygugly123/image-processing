function [im]= ContrastStretchingTransformation(X,M,E)

% this type of transformation is needed where we have to increase the
% contrast. i.e. if we have to make dark even darker and make light even
% lighther we use this transformation. E control the slope of function and
% m is hte mid-line where we wnat to swith from darker to lighter. esp is
% the matlab constant. the general formula for calculating the
% transformation is y=1./(1+(m./double(X)+eps).^E). m is taken as the mean
% value.

%================== input ====================%
% X =intensity matrix of a image to be transformed
% M =the threshold value from where the contrast is to be stretched
% E =the value control how much contrast is to be stretched

%================== output ====================%
% im =transformed intesity matrix

g=1./(1+(M./(im2double(X)+eps)).^E);
figure,subplot(1,2,1);
imshow(X);	 %show original image
subplot(1,2,2),imshow(g);%show transformed image
im=g;




end