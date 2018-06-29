im=imread('images1.jpg');
X=EllipsoidTransformation(im,-1);
storeTransformedMatrixInCsv(X,1);

im=imread('images2.jpg');
X=ConeTransformation(im,1);
storeTransformedMatrixInCsv(X,2);

im=imread('images3.jpg');
X=HyperboloidOneSheetTransformation(im,3);
storeTransformedMatrixInCsv(X,3);

im=imread('images6.jpg');
X=HyperboloidTwoSheetTransformation(im,5);
storeTransformedMatrixInCsv(X,6);

im=imread('images10.jpg');
X=EllipticParaboloidTransformation(im,7);
storeTransformedMatrixInCsv(X,10);

im=imread('images11.jpg');
X=HyperbolicParaboloidTransformation(im,-3);
storeTransformedMatrixInCsv(im,11);