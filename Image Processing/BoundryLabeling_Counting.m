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
[L num] =bwlabel(c);

disp(num)