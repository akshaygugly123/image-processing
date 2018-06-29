function AutomaticallyCalculatepvaluepsnrssim(x)

k=0;
for j=x
   
    var=sprintf('images%d.jpg',j);
    im=imread(var);
    im=im2double(im);
    Z=[-1 1 3 5 7];
    l=1;
    for i=Z
       X= EllipsoidTransformation(im,i);
       diff=absolutediff(im,abs(X));
       convMat=MatrixConversion(diff);
       m(l,4*k+1)=FrequencyTest(convMat);
       m(l,4*k+2)=mypsnr(im,abs(X));
       m(l,4*k+3)=myssim(im,abs(X));
       l=l+1;
    end
    l=l+1;
    
     for i=Z
       X= ConeTransformation(im,i);
       diff=absolutediff(im,abs(X));
       convMat=MatrixConversion(diff);
       m(l,4*k+1)=FrequencyTest(convMat);
       m(l,4*k+2)=mypsnr(im,abs(X));
       m(l,4*k+3)=myssim(im,abs(X));
       l=l+1;
     end
     l=l+1;
     
     for i=Z
       X= HyperboloidOneSheetTransformation(im,i);
       diff=absolutediff(im,abs(X));
       convMat=MatrixConversion(diff);
       m(l,4*k+1)=FrequencyTest(convMat);
       m(l,4*k+2)=mypsnr(im,abs(X));
       m(l,4*k+3)=myssim(im,abs(X));
       l=l+1;
     end
     l=l+1;
     
     for i=Z
       X= HyperboloidTwoSheetTransformation(im,i);
       diff=absolutediff(im,abs(X));
       convMat=MatrixConversion(diff);
       m(l,4*k+1)=FrequencyTest(convMat);
       m(l,4*k+2)=mypsnr(im,abs(X));
       m(l,4*k+3)=myssim(im,abs(X));
       l=l+1;
     end
     l=l+1;
     
     for i=Z
       X= EllipticParaboloidTransformation(im,i);
     diff=absolutediff(im,abs(X));
       convMat=MatrixConversion(diff);
       m(l,4*k+1)=FrequencyTest(convMat);
       m(l,4*k+2)=mypsnr(im,abs(X));
       m(l,4*k+3)=myssim(im,abs(X));
       l=l+1;
     end
     l=l+1;
     
     for i=Z
       X= HyperbolicParaboloidTransformation(im,i);
      diff=absolutediff(im,abs(X));
       convMat=MatrixConversion(diff);
       m(l,4*k+1)=FrequencyTest(convMat);
       m(l,4*k+2)=mypsnr(im,abs(X));
       m(l,4*k+3)=myssim(im,abs(X));
       l=l+1;
    end
    disp(k+1);
   k=k+1; 
end
xlswrite('pvaluePsnrSsim.xlsx',m);
end