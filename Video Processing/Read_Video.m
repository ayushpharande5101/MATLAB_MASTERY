clc;
clear;
close all;

VidObj = VideoReader("intro.mp4");
disp(VidObj)
% NumFrames = VidObj.NumFrames;
FrameRate = VidObj.FrameRate;

h = axes;

while hasFrame(VidObj)

    vidFrame = readFrame(VidObj);
    image(vidFrame, 'Parent',h)
    h.Visible = 'off';
    pause(1/FrameRate)
end
