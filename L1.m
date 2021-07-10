clc
clf
img = imread('Fig1.jpg');
im = rgb2gray(img);
figure(1)
subplot(1,3,1);
%Original image
imshow(im);
count = 0;
for i = 1:255
    for j = 1:255
        if im(i,j) < 60
            count = count + 1;
            im(i,j) = 200;
        end
    end
end
subplot(1,3,2)
%Manipulating intensity values
imshow(im);
blur = imgaussfilt(im,0.8);
subplot(1,3,3)
%Applying Gaussian filter of order 0.8
imshow(blur)
ft = fft2(im);
ft = log(1+abs(ft));
ft = fftshift(ft);
figure(2)
subplot(1,3,1)
%DFT of the given Picture
imshow(ft,[]);
%Filter
for i=1:256
    for j=1:256
        if ft(i,j)>10.0
            ft(i,j)=7;
        end
    end
end
subplot(1,3,2)
imshow(ft,[])
%IDFT
ift = ifft2(ft);
subplot(1,3,3)
imshow(ift,[])
