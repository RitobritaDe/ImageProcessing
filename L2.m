img = imread('Fig2.jpg');
imc = rgb2gray(img);
figure(1)
subplot(2,2,1)
imshow(imc);
J = double(imc)/255;
v = var(J(:));
SNR = [5 10 20];
v1 = v/(10^(SNR(1)/10));
v2 = v/(10^(SNR(2)/10));
v3 = v/(10^(SNR(3)/10));
title('Normal');
%edge detection of clear image
edgesc = edge(imc,'sobel');
subplot(2,2,2)
imshow(edgesc)
title('sobel');
edgerc = edge(imc,'Roberts');
subplot(2,2,3)
imshow(edgerc)
title('Roberts');
edgepc = edge(imc,'prewitt');
subplot(2,2,4)
imshow(edgepc)
title('Prewitt')
%
%add noise
%5dB
imn = imnoise(imc,'gaussian',0,v1);
figure(2)
subplot(2,2,1)
imshow(imn)
title('With 5dB noise');
edges = edge(imn,'sobel');
subplot(2,2,2)
imshow(edges)
title('sobel');
edger = edge(imn,'Roberts');
subplot(2,2,3)
imshow(edger)
title('Roberts');
edgep = edge(imn,'Prewitt');
subplot(2,2,4)
imshow(edgep)
title('Prewitt')
%10dB
imn1 = imnoise(imc,'gaussian',0,v2);
figure(3)
subplot(2,2,1)
imshow(imn1)
title('With 10dB noise');
edges1 = edge(imn1,'sobel');
subplot(2,2,2)
imshow(edges1)
title('sobel');
edger1 = edge(imn1,'Roberts');
subplot(2,2,3)
imshow(edger1)
title('Roberts');
edgep1 = edge(imn1,'Prewitt');
subplot(2,2,4)
imshow(edgep1)
title('Prewitt')
%20dB
imn2 = imnoise(imc,'gaussian',0,v3);
figure(4)
subplot(2,2,1)
imshow(imn2)
title('With 20dB noise');
edges2 = edge(imn2,'sobel');
subplot(2,2,2)
imshow(edges2)
title('sobel');
edger2 = edge(imn2,'Roberts');
subplot(2,2,3)
imshow(edger2)
title('Roberts');
edgep2 = edge(imn2,'Prewitt');
subplot(2,2,4)
imshow(edgep2)
title('Prewitt')
%Counting number of edges
%Clear
a = nnz(edgesc)
b = nnz(edgerc)
c = nnz(edgepc)
%snr case 1
a1 = nnz(edges)
b1 = nnz(edger)
c1 = nnz(edgep)
%snr case 2
a2 = nnz(edges1)
b2 = nnz(edger1)
c2 = nnz(edgep1)
%snr case 3
a3 = nnz(edges2)
b3 = nnz(edger2)
c3 = nnz(edgep2)
