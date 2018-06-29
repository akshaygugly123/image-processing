function storeTransformedMatrixInCsv(X,testsubscript)

% this function is used to store the transformed matrix into a csv file
% named as test(testsubscript).csv for further use during reconstruction

% ================ input =================%
% X = transformed image
% testsubscript= subscript used with test__.csv to store the value

% =============== output =================%

var1=sprintf('test%drealpart.csv',testsubscript);
var2=sprintf('test%dimagpart.csv',testsubscript);
[n]=size(X);
Xreal=real(X);
Xreal(1,1,1)=length(n);
Ximag=imag(X);
csvwrite(var1,Xreal);
csvwrite(var2,Ximag);
end