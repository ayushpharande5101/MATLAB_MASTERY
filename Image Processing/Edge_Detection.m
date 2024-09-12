clc;
clear;
close all;

a = imread("rose.jpg");
b = rgb2gray(a);

c = edge(b,"sobel");
d = edge(b,"prewitt");
e = edge(d,"canny");
figure;

subplot(2,2,1); imshow(a); 
subplot(2,2,2); imshow(c); title('sobel');
subplot(2,2,3); imshow(d); title('prewitt');
subplot(2,2,4); imshow(e); title('canny');

