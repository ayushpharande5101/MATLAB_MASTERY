clc;
clear;
close all;

camObj = webcam("Sunil's S21 FE (Windows Virtual Camera)");

pause(2);
I = snapshot(camObj);
FaceDetector = vision.CascadeObjectDetector('FrontalFaceCART');
EyeDetector = vision.CascadeObjectDetector('EyePairBig');
MouthDetector = vision.CascadeObjectDetector('Mouth');

bboxes = step(FaceDetector, I);
bboxes1 = step(EyeDetector, I);
bboxes2 = step(MouthDetector, I);

IFaces = insertObjectAnnotation(I,"rectangle",bboxes, 'Face');
hold on;
IFaces = insertObjectAnnotation(IFaces,"rectangle",bboxes1, 'Eye');
hold on;
IFaces = insertObjectAnnotation(IFaces,"rectangle",bboxes2, 'Mouth');

figure, imshow(IFaces), title('Detetected Faces');