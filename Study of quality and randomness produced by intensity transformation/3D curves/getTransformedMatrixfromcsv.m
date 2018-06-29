function[TransformedMatrix]= getTransformedMatrixfromcsv(testsubscript)

% this function is used to read the csv test file that i have created for
% testing purpose in reconstruction and convert it to 3 dimensional if it
% is an rgb n-by-n-by-3 matrix for that i have used the first element of
% the matrix to store the 3rd dimension. so if X(1,1)==3 then we will
% construct it into 3d.

% ====================== input =======================%
% testsubscript = it the subscript of the file test___.csv from where we
%               have to read trasformed matrix

% ====================== output ======================%
% TransformedMatrix= the converted actual intensity matrix for
%                   reconstuction

var1=sprintf('test%drealpart.csv',testsubscript);
var2=sprintf('test%dimagpart.csv',testsubscript);

X=csvread(var1);
Y=csvread(var2);   
    if X(1,1)==3
       n=size(X);
       n=n(2)/3;
       Z(:,:,1)=X(:,1:n)+Y(:,1:n)*1i;
       Z(:,:,2)=X(:,n+1:2*n)+Y(:,n+1:2*n)*1i;
       Z(:,:,3)=X(:,2*n+1:3*n)+Y(:,2*n+1:3*n)*1i;
    else
        Z=(X+Y*1i);
    end

    TransformedMatrix=Z;
    
end