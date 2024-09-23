clc;
clear;
close all;

camObj = webcam("Sunil's S21 FE (Windows Virtual Camera)");
preview(camObj);

while(1)

    img = snapshot(camObj);
    [msg, ~, loc] = readBarcode(img);

    if msg == ""
        continue
    
    else
        clc;
        disp(msg);
        break;
    end
end