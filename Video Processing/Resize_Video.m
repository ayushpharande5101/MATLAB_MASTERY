clc;
clear;
close all;

VidObj = VideoReader("intro.mp4");
disp(VidObj);

FrameRate = VidObj.FrameRate;
NumFrames = VidObj.NumFrames;
figure;

h = axes;
for i = 1:NumFrames
    VidFrame = read(VidObj, i);
    VidFrame = imresize(VidFrame ,[480 640]);
    imshow(VidFrame);
    pause(1/FrameRate);

end
