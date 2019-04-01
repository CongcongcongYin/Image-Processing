original=imread('lenna512_AWGN.bmp')
[ result ] = GrayScaleStatistic( original, 0, 255 )
y = GrayScaleStatistic(original, 0, 255);
x = 0 : 1 : 255;
bar(x, y)