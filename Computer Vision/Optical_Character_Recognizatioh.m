clc;
clear;
close all;

camObj = webcam("Sunil's S21 FE (Windows Virtual Camera)");
preview(camObj);

while(1)
    pause(2);
    img = snapshot(camObj);
    ocrResults = ocr(img);
    clc;
    disp(ocrResults.Text);



end