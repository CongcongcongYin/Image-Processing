function psnr = calculate_psnr(im1, im2)
image_o = double(im1);
image_m = double(im2);
[h, w] = size(image_m);
mse = sum(sum((image_o-image_m).^2))/(h*w);%mean square error 
psnr = 10* log(255^2/mse)/log(10);%peak signal to noise ratio
end
