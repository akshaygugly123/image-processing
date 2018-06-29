function[im]=NegativeTransformation(X)

% this NegativeTransformation function will complement the value of every
% intensity in X. we will be using imcomplement() function of matlab.
% the basic idea is im=max_range_of_pixel-X
% here we are converting X using im2double which will make the value of 
% X in the range of 0 to 1, so the formulat will become im=1-X;

%================== input ====================%
% X= the intensity matrix that is to be transformed

%================== output ====================%
% im= intesity matrix of the tranformed image

X=im2double(X);
im=imcomplement(X);

% plotting the images

figure,subplot(1,2,1),imshow(X),title('original image');
subplot(1,2,2),imshow(im),title('negative transformed image');

end