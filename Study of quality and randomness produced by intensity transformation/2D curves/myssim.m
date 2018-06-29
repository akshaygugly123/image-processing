function[ssim]=myssim(X, Y)

% ssim (Structural similarity) is calculated over various windows of an image
% but i am considering whole image as a window and applying the ssim
% ssim(X,Y)=((2*mean_X*mean_Y+c1)(2*covariance_x_y+c2))/((mean_x^2+mean_y^2+c1)(variance_x^2+variance_y^2+c2));
% mean_x=mean(X(:));
% mean_y=mean(Y(:));
% variance_x=var(x(:));
% variance_y=var(Y(:));
% covariance_x_y=sum((X(:)-mean_x).*(Y(:)-mean_y))/numel(X);
% c1=(k1*L)^2 c2=(k2*L)^2
% k1=0.01 k2=0.03 and L= dynamic range of pixel values

%================== input ====================%
% X = intensity matrix of original image
% Y= intensit matrix of the reconstructed image

%================== output ====================%
% ssim= the computed value of ssim

mux=mean(X(:));
muy=mean(Y(:));
varx=var(X(:));
vary=var(Y(:));
n=numel(X);
covarxy=(X-mux).*(Y-muy);
covarxy=(sum(covarxy(:)))/n;
c1=(0.01*255)^2;
c2=(0.03*255)^2;

ssim=((2*mux*muy+c1)*(2*covarxy+c2))/((mux^2+muy^2+c1)*(varx^2+vary^2+c2));

end