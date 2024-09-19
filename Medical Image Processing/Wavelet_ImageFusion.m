% Simple Wavelet based Image Fusion 
clc;
clear;
close all;
a= imread('mri.jpg');
b = imread('ct.jpg');
 
[LL1, LH1, HL1, HH1] = dwt2(a, 'haar');
[LL2, LH2, HL2, HH2] = dwt2(b, 'haar');

Dec1 = [LL1, LH1 ; HL1, HH1];
Dec2 = [LL2, LH2 ; HL2, HH2];

Dec1 = double(Dec1);
Dec2 = double(Dec2);

[FusedWaveletCoeff] = average(Dec1, Dec2);
[r, c] = size(FusedWaveletCoeff);

CA = FusedWaveletCoeff(1:(r/2), 1:(r/2));%LLH3
CH = FusedWaveletCoeff(1:(r/2), (r/2 + 1):r);%LHL4
CV = FusedWaveletCoeff((r/2 + 1):r, 1:(r/2));%HLH3
CD = FusedWaveletCoeff((r/2 + 1):r, (r/2 + 1):r);%HHH3

FusedImage = idwt2(CA, CH, CV, CD, 'haar');

figure;
subplot(1,3,1); imshow(a);
subplot(1,3,2); imshow(b);
subplot(1,3,3); imshow(FusedImage, []);

