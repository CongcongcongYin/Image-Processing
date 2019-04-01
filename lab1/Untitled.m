[I0,map] = imread('lenna512.bmp');
I1=imresize(I0,1/2,'nearest');
subplot(1,2,1)
image(I1)
I2=imresize(I0,1/2,'bilinear');
subplot(1,2,2)
image(I2)
colormap(map)
truesize
