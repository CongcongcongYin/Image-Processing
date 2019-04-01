[I0,map] = imread('lenna512.bmp');
I1=imresize(I0,1/2,'bilinear');
I1_1=imresize(I1,2,'bilinear');
subplot(1,2,1)
image(I0)
subplot(1,2,2)
image(I1_1)
colormap(map)
truesize