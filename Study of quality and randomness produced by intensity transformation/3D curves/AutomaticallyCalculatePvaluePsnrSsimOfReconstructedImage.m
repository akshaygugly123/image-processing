function AutomaticallyCalculatePvaluePsnrSsimOfReconstructedImage(subscript)

k=0;
for j=subscript
    
   var1=sprintf('images%d.jpg',j);
   orig=imread(var1);
   orig=im2double(orig);
   
   im=getTransformedMatrixfromcsv(j);
   
   % figure,subplot(1,2,1),imshow(orig),title('original image');
   % figure,subplot(1,2,2),imshow(abs(Z)),title('transformed image');
   
   
    Z=[-3 -1 1 3 5 7];
    l=1;
    for i=Z
       X= ReverseEllipsoidTransformation(im,i);
       diff=absolutediff(abs(im),abs(X));
       convMat=MatrixConversion(diff);
       m(l,4*k+1)=FrequencyTest(convMat);
       m(l,4*k+2)=mypsnr(orig,abs(X));
       m(l,4*k+3)=myssim(orig,abs(X));
       l=l+1;
    end
    l=l+1;
    
     for i=Z
       X= ReverseConeTransformation(im,i);
       diff=absolutediff(abs(im),abs(X));
       convMat=MatrixConversion(diff);
       m(l,4*k+1)=FrequencyTest(convMat);
       m(l,4*k+2)=mypsnr(orig,abs(X));
       m(l,4*k+3)=myssim(orig,abs(X));
       l=l+1;
     end
     l=l+1;
     
     for i=Z
       X= ReverseHyperboloidOneSheetTransformation(im,i);
       diff=absolutediff(abs(im),abs(X));
       convMat=MatrixConversion(diff);
       m(l,4*k+1)=FrequencyTest(convMat);
       m(l,4*k+2)=mypsnr(orig,abs(X));
       m(l,4*k+3)=myssim(orig,abs(X));
       l=l+1;
     end
     l=l+1;
     
     for i=Z
       X= ReverseHyperboloidTwoSheetTransformation(im,i);
       diff=absolutediff(abs(im),abs(X));
       convMat=MatrixConversion(diff);
       m(l,4*k+1)=FrequencyTest(convMat);
       m(l,4*k+2)=mypsnr(orig,abs(X));
       m(l,4*k+3)=myssim(orig,abs(X));
       l=l+1;
     end
     l=l+1;
     
     for i=Z
       X= ReverseEllipticParaboloidTransformation(im,i);
     diff=absolutediff(abs(im),abs(X));
       convMat=MatrixConversion(diff);
       m(l,4*k+1)=FrequencyTest(convMat);
       m(l,4*k+2)=mypsnr(orig,abs(X));
       m(l,4*k+3)=myssim(orig,abs(X));
       l=l+1;
     end
     l=l+1;
     
     for i=Z
       X= ReverseHyperbolicParaboloidTransformation(im,i);
      diff=absolutediff(abs(im),abs(X));
       convMat=MatrixConversion(diff);
       m(l,4*k+1)=FrequencyTest(convMat);
       m(l,4*k+2)=mypsnr(orig,abs(X));
       m(l,4*k+3)=myssim(orig,abs(X));
       l=l+1;
    end
    disp(k+1);
   k=k+1; 
end

csvwrite('autoPvaluePsnrSsim.csv',m);

end