clear all;
i=imread('lenna512_AWGN.bmp');

h=fspecial('average');
h=h';
z=imfilter(i,h);

figure;
subplot(1,2,1)
imshow(i);
title('????')
subplot(1,2,2)
imshow(z)
title('??????')