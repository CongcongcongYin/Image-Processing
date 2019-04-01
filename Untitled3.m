I = imread('lenna512.bmp');
I2 = imcrop(I,[195 168 200 270]);
subplot(1,2,1)
image(I)
title('Original Image')
subplot(1,2,2)
image(I2)
title('Cropped Image')
colormap(map)
truesize