function[Pvalue]= FrequencyTest(M)
    
% Frequency test also called monobit test is used to check the randomness
% of bit of streams.Here we are having M a matix containing only 0's and
% 1's , i will count in column major.Now Basic overview what frequency test
% does, first of all it counts no of ones and no of zeroes then compute the
% absolute difference and represented as Sn , it uses two theorem central
% limit theorem and De-Moivre laplace theorem. so after calculating Sn, we
% find Sobs as Sobs=|Sn|/sqrt(n) and then X is calculatd as X=Sobs/sqrt(2)
% then we use complemented error function erfc() to find pvalue, so
% Pvalue=1-erfc(X)

% decision rule at 1% when pvalue>=0.01 then the randomness is accepted
% if pvalue<0.01 then the randomness is not accepted

%================== input ====================%
% M = a matrix in which all the value are either 1 or 0

%================== output ====================%
% Pvalue = a value between 0 to 1 which signifies the randomness of the stream of
%		   bits of M

%===========code goes here =========%

n=length(M(:));
noOfOnes=length(find(M==1));
noOfZeroes=length(find(M==0));

Sn=abs(noOfZeroes-noOfOnes);
Sobs=Sn/sqrt(n);
X=Sobs/sqrt(2);
Pvalue=1-erfc(X);

end