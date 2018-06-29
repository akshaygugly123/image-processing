function storeTransformedMatrixInCsv(X,testsubscript)

% this function is used to store the transformed matrix into a csv file
% named as test(testsubscript).csv for further use during reconstruction

% ================ input =================%
% X = transformed image
% testsubscript= subscript used with test__.csv to store the value

% =============== output =================%

var=sprintf('test%d.csv',testsubscript);
[n]=size(X);
X(1,1,1)=length(n);
csvwrite(var,X);
end