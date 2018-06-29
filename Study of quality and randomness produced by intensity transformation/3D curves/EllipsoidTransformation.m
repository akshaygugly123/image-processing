function[im] = EllipsoidTransformation( X,Z,constants)

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
im=(b*b*(1-(X.^2/(a*a))-(Z^2/c^2))).^(1/2);

%plotting the images

figure, subplot(1,2,1) , imshow(X),title('Original Image');
subplot(1,2,2),imshow(abs(im)), title('Ellipsoid Transformed Image');

end