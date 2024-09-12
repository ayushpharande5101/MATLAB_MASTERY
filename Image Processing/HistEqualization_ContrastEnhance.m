clc;
clear;
close all;

a = imread("cameraman.png");
b = imadjust(a);
c = histeq(a);
d = adapthisteq(a);

x = [a b c d];
figure; imshow(x);