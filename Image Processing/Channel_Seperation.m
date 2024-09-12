clc;
clear;
close all;

a = imread("balloons.tif");
b = rgb2gray(a);

[r g b] = imsplit(a);

figure; imshow(r);

Red(:,:,1) = r;
Red(:,:,2) = 0;
Red(:,:,3) = 0;
figure; imshow(Red);

gr(:,:,2) = g;
gr(:,:,1) = 0;
gr(:,:,3) = 0;
figure; imshow(gr);

bl(:,:,3) = b;
bl(:,:,2) = 0;
bl(:,:,1) = 0;
figure; imshow(bl);


