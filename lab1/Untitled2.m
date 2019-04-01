[I0,map] = imread('lenna512.bmp');
I1=imresize(I0,1/2,'bilinear');
I1_1=imresize(I1,2,'bilinear');
I2=imresize(I0,1/2,'nearest');
I1_2=imresize(I2,2,'nearest');
subplot(1,2,1)
image(I1_1)
subplot(1,2,2)
image(I1_2)
colormap(map)
truesize



