clc;
close all;

a = imread('cameraman.png');
b = imread('mountain.png');

c = imresize(b, size(a));

d = imadd(a, c);

K = imlincomb(1, a, 1, c, 'uint16');

figure;

subplot(1,3,1); imshow(a);
subplot(1,3,2); imshow(c, []);
subplot(1,3,3); imshow(K, []);