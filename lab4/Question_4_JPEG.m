im=imread('lenna512.bmp');
file_name_JPEG='Question4_JPEG.dat';
i=1;
for QP=1:14:99
    imwrite(im,file_name_JPEG,'jpeg','Quality',QP);
    imo_JPEG=imread('Question4_JPEG.dat');
    [size_JPEG]=fsize(file_name_JPEG);
    rate_JPEG=(size_JPEG*8)/(512^2);
    psnr_JPEG = calculate_psnr(imo_JPEG, im);
    rate_JPEG_all(i)=rate_JPEG;
    psnr_JPEG_all(i)=psnr_JPEG;
    i=i+1;
end
figure,plot(rate_JPEG_all,psnr_JPEG_all);
xlabel('bit rate');
ylabel('psnr');
title('bit rate and psnr(JPEG)');
grid on;