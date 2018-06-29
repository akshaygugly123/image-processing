function[psnr]=mypsnr(I,K)

% peak signal-to-noise ratio (PSNR) is the ratio between the maximum
% possible pixel of a image and the pixel of corrupting noise that 
% affect the fidelity of its representation. It is expressed in terms 
% of the logarithmic decibel scale

% defined via mse(mean squared error)
% mse=sum((I(:)-K(:)).^2)/numel(I);
% psnr is defined as psnr=20.log10(Maxi)-10log10(mse);

% since we are converting our original image using im2double and 
% making the transformation the pixel values will be in 0 to 1
% thus Maxi=1; and psnr=-10log10(mse)
% if mse is zero the psnr==INF means two images are identical
% if mse is inf the psnr==-INF means we cannot compute the psnr as
% the reconstructed matrix contains infinity

%================== input ====================%
% I= intensity matrix of original image
% K= intensity matrix of the reconstructed image

%================== output ====================%
% psnr= value of the ratio (psnr value)

diff=I-K;
diff=diff.^2;
diff=sum(diff(:));
m=diff/(numel(I));

psnr=20*log10(1)-10*log10(m);

end