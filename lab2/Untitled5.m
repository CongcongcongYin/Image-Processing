im1 = imread('lenna512_low_dynamic_range.bmp');
im2 = histeq(im1);
imshow(im1)
figure, imshow(im2)
psnr = calculate_psnr(im1, im2)