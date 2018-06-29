function[convertedMatrix]=MatrixConversion(X,percentage)

% The basic idea is to convert the matrix into the stream of zeroes and one
% and for that first i will take the median of the matrix by using median
% function of the matlab and using Matrix as column major. the i will use a
% decision that if the element value of the matrix is smaller than the
% median then i will make it zero else if the values is equal to or greater
% than the median then i will make it to 1, in this way my matrix will
% become an streams of 0's and 1's

% percentage is used to define the value of median to be used in conversion
% median will be modified as median=(median*percentage)/100;

%================== input ====================%
% X=the matrix [diff(actual , transformed)] that is to be converted into 0's and 1's
% percentage= decide how much value of median is to be used; by default it is 100

%================== output ====================%
% convertedMatrix= the converted matrix containing only 1's and 0's.

if nargin<2
    percentage=100;
end
    
    med=median(X(:));
    med=percentage*med/100;
convertedMatrix=X;

%disp(med);

convertedMatrix(convertedMatrix<med)=0;
convertedMatrix(convertedMatrix>=med)=1;

end