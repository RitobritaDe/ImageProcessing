clc
clear all
close all
[I1,map1] = imread('fig31.tif',1);
i1 = im2double(I1);
[I2,map2] = imread('fig32.tif',1);
i2 = im2double(I2);
figure(1)
subplot(2,1,1);
imshow(I1,map1);
subplot(2,1,2);
imshow(I2,map2);
D = imabsdiff(i1,i2);
figure(2)
imshow(D)
figure(3)
imshowpair(i1,i2,'diff');
