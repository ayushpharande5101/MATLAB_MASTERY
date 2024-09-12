clc;
clear;
close all;

a = imread("rose.jpg");

b = rgb2hsv(a);
b1 = hsv2rgb(b);

c = rgb2xyz(a);
c1 = xyz2rgb(c);

d = rgb2ycbcr(a);
d1 = ycbcr2rgb(d);

e = rgb2lab(a);
e1 = lab2rgb(e);

subplot(2,4,1); imshow(b);
subplot(2,4,2); imshow(c);
subplot(2,4,3); imshow(d);
subplot(2,4,4); imshow(e);
subplot(2,4,5); imshow(b1);
subplot(2,4,6); imshow(c1);
subplot(2,4,7); imshow(d1);
subplot(2,4,8); imshow(e1);


