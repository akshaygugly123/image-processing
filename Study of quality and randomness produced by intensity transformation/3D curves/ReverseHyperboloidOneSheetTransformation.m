function[im] = ReverseHyperboloidOneSheetTransformation( X,Z,constants)

if nargin<3
    constants=[1 1 1];
   
elseif nargin==3
        if length(constants)==1
            constants(2:3)=1;
        elseif length(constants)==2
            constants(3)=1;
        end
end
a=constants(1);
b=constants(2);
c=constants(3);
X=im2double(X);
im=((1+(Z^2/c^2)-(X.^2/b^2))*a*a).^(1/2);
%plotting the images

%figure, subplot(1,2,1) , imshow(X),title('Original Image');
%subplot(1,2,2),imshow(im), title('Hyperboloid one sheet Transformed Image');
end