img1=imread('lenna512.bmp');
img2=imread('lenna512_AWGN.bmp');
img3=imread('lenna512_SandP.bmp');
img4=imread('lenna512_low_dynamic_range.bmp');
psnr = calculate_psnr(img1, img2)
psnr = calculate_psnr(img1, img3)
psnr = calculate_psnr(img1, img4)
subplot(2,2,1)
imshow(img1)
subplot(2,2,2)
imhist(img3)
axis([-10 300 0 5000])
subplot(2,2,3)
imshow(img4) 
subplot(2,2,4)
imhist(img3)
axis([-10 300 0 5000])
