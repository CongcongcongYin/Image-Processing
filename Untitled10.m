[I0,map] = imread('lenna512.bmp');
I1=[I0/16];
subplot(1,2,1),subimage(I0,gray(256))
subplot(1,2,2),subimage(I1,gray(16))
