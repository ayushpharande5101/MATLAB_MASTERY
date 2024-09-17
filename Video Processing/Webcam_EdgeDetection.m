clc;
clear;
close all;

camObj = webcam("Sunil's S21 FE (Windows Virtual Camera)");

while(1)

    img = snapshot(camObj);
    img1 =rgb2gray(img);
    img2 = edge(img1, "canny");
    img2 = img2 * 255;

    imge(:,:,1) = img2;
    imge(:,:,2) = img2;
    imge(:,:,3) = img2;

    I = [img, imge];
    imshow(I);


end

