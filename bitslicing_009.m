
clc;clear all;close all;

Y =rgb2gray( imread('football.jpg'));          %converting rgb to gray and storing pixel values in Y

yd = double(Y);                                %converting Y to double precision

% extracting bits from yd variable

a1 = mod(yd,2);
a2 = mod(floor(yd/2),2);
a3 = mod(floor(yd/4),2);
a4 = mod(floor(yd/8),2);
a5 = mod(floor(yd/16),2);
a6 = mod(floor(yd/32),2);
a7 = mod(floor(yd/64),2);
a8 = mod(floor(yd/128),2);

% display original grayscale image
subplot(2, 5, 1); 
imshow(Y); 
title('Original Image'); 
  
% plotting binary image having extracted bit from 1st to 8th in subplot from 2nd to 9th 
subplot(2, 5, 2); 
imshow(a1); 
title('Bit Plane 1'); 
subplot(2, 5, 3); 
imshow(a2); 
title('Bit Plane 2'); 
subplot(2, 5, 4); 
imshow(a3); 
title('Bit Plane 3'); 
subplot(2, 5, 5); 
imshow(a4); 
title('Bit Plane 4'); 
subplot(2, 5, 6); 
imshow(a5); 
title('Bit Plane 5'); 
subplot(2, 5, 7); 
imshow(a6); 
title('Bit Plane 6'); 
subplot(2, 5, 8); 
imshow(a7); 
title('Bit Plane 7'); 
subplot(2, 5, 9); 
imshow(a8); 
title('Bit Plane 8'); 