clc; clear; close all;

camobj = webcam("Sunil's S21 FE (Windows Virtual Camera)");

preview(camobj);

pause(2)
img = snapshot(camobj);

imshow(img);