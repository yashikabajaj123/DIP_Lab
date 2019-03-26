clc; clear; close all;

Y = imread('football.jpg');

Red = Y(:,:,1);                         %for red layer
Green = Y(:,:,2);                       %for green layer   
Blue = Y(:,:,3);                        %for blue layer
black = zeros(size(image,1))            %create an all black channel        

%display original RGB
subplot(2,3,2);
imshow(Y);

%display red layer
subplot(2,3,4);
imshow(Red);

%dsiplay green layer
subplot(2,3,5);
imshow(Green);

%display blue channel
subplot(2,3,6);
imshow(Blue);