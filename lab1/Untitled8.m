[I0,map]=imread('lenna512.bmp');
I1=imresize(I0,1/2,'bilinear');
I1_1=imresize(I1,2,'bilinear');
[peaksnr, snr] = psnr(I1_1, I0);
fprintf('\n The Peak-SNR value is %0.4f', peaksnr);