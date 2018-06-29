function AutomaticallyCalculateRandomnessVsThreshold(x)

k=0;
for j=x
   
    var=sprintf('images%d.jpg',j);
    im=imread(var);
    im=im2double(im);
    Z=[-1 1 3 5 7];
    l=1;
    med=[25 40 55 70 85 100];
    for i=Z
       X= EllipsoidTransformation(im,i);
       diff=absolutediff(im,abs(X));
       index=1;
       for med_i=med
       convMat=MatrixConversion(diff,med_i);
       m(l,7*k+index)=FrequencyTest(convMat);
       index=index+1;
       end
       l=l+1;
    end
    l=l+1;
    
     for i=Z
       X= ConeTransformation(im,i);
        diff=absolutediff(im,abs(X));
         index=1;
       for med_i=med
       convMat=MatrixConversion(diff,med_i);
       m(l,7*k+index)=FrequencyTest(convMat);
       index=index+1;
       end
       l=l+1;
     end
     l=l+1;
     
     for i=Z
       X= HyperboloidOneSheetTransformation(im,i);
        diff=absolutediff(im,abs(X));
       index=1;
       for med_i=med
       convMat=MatrixConversion(diff,med_i);
       m(l,7*k+index)=FrequencyTest(convMat);
       index=index+1;
       end
       l=l+1;
     end
     l=l+1;
     
     for i=Z
       X= HyperboloidTwoSheetTransformation(im,i);
        diff=absolutediff(im,abs(X));
       index=1;
       for med_i=med
       convMat=MatrixConversion(diff,med_i);
       m(l,7*k+index)=FrequencyTest(convMat);
       index=index+1;
       end
       l=l+1;
     end
     l=l+1;
     
     for i=Z
       X= EllipticParaboloidTransformation(im,i);
        diff=absolutediff(im,abs(X));
      index=1;
       for med_i=med
       convMat=MatrixConversion(diff,med_i);
       m(l,7*k+index)=FrequencyTest(convMat);
       index=index+1;
       end
       l=l+1;
     end
     l=l+1;
     
     for i=Z
       X= HyperbolicParaboloidTransformation(im,i);
        diff=absolutediff(im,abs(X));
      index=1;
       for med_i=med
       convMat=MatrixConversion(diff,med_i);
       m(l,7*k+index)=FrequencyTest(convMat);
       index=index+1;
       end
       l=l+1;
    end
    disp(k+1);
   k=k+1; 
end
xlswrite('randomnessvsthreshold.xlsx',m);
end