clc;
clear;
close all;

vidObj = VideoReader("intro.mp4");

FrameRate = vidObj.FrameRate;
NumFrames = vidObj.NumFrames;

str = '.bmp';

for i=1:NumFrames
    filename = strcat(num2str(i),str);
    VidFrame = read(vidObj, i);
    imwrite(VidFrame,filename);
end