clc;
clear all;
close all;
I=imread('Fig.4.jpg');
mask = false(size(I)); 
mask(472,557)=true;
mask(594,595)=true;
mask(454,480)=true;
W =graydiffweight(I, mask, 'GrayDifferenceCutoff',15);
thresh = 0.005
[BW, D] = imsegfmm(W, mask, thresh);
figure
imshow(BW)
title('Required Image');