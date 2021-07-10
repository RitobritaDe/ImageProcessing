clc
clear all
close all
I = imread('Fig.5.png');
imshow(I);
BW = im2bw(I);
figure(1)
subplot(2,2,1)
imshow(BW);
hold on
[B,L,N,A] = bwboundaries(BW);
for k=1:N
    if (nnz(A(:,k)) > 0)
        b = B{k};
        plot(b(:,2),b(:,1),'r','LineWidth',2);
        c = cat(2,b(:,1),b(:,2));
    end
end
c1 = mat2gray(c);
edge = edge(BW,'canny');
figure(1)
subplot(2,2,2)
imshow(edge);
subplot(2,2,3);
imshow(c1);