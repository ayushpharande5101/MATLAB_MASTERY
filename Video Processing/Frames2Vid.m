clc; clear; close all;

vidObj = VideoWriter('Ayush.mp4','MPEG-4');
open(vidObj);

h = axes;
for i = 1:178
    filename = strcat(num2str(i),'.bmp');

    a = imread(filename);

    image(a,'Parent',h);
    h.Visible = 'off';
    
    pause(1/30);
    currFame = getframe(gca);
    writeVideo(vidObj, currFame);

end

close(vidObj)

