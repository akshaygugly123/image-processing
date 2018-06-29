function[X]=ReverseOfContrastStretching(im,e,m)

% this function will take an transformed image matrix and then it will
% perform the reverse of the constrast stretching transformation which will
% give the reconstructed intensity matrix
% X=m/((1./im-1).^(1/e))-eps

%=================== input ======================%
% im = transformed intesity matrix
% e ,and
% m have same meaning as used in contrast stretching

%================== output  =====================%
% X= reconstructed image intesity matrix

if nargin<3
    m=0.5;
end

  X=1./im;
   X=X-1;
   X=(X).^(1/e);
   X=m./X;
   X=X-eps;
   
end