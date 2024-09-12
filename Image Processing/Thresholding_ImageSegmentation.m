clc;
clear;
close all;

a = imread("coins.png");
imshow(a);

figure;imhist(a);

disp(a);
b = a>100;
figure; 
imshow(b);

c = medfilt2(b,[5,5]);
c = uint8(c);

d = c.*a;
figure; imshow(d);

