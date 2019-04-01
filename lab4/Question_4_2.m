im=imread('lenna512.bmp');
Qmat=[1,2,2,4,4,4,4,8,8,8,8,8,8,8,8,16;
      2,2,2,4,4,4,4,8,8,8,8,8,8,8,8,16;
      2,2,2,4,4,4,4,8,8,8,8,8,8,8,8,16;
      4,4,4,4,4,4,4,8,8,8,8,8,8,8,8,16;
      4,4,4,4,4,4,4,8,8,8,8,8,8,8,8,16;
      4,4,4,4,4,4,4,8,8,8,8,8,8,8,8,16;
      4,4,4,4,4,4,4,8,8,8,8,8,8,8,8,16;
      8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,16;
      8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,16;
      8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,16;
      8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,16;
      8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,16;
      8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,16;
      8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,16;
      8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,16;
      16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16;];
file_name_8='Question4_2.dat';
file_name_16='Question4_2.dat';
N_8=8;
N_16=16;
i=1;
k=1;
for QP_8=1:14:99
rate_8 = compress_im(im, Qmat, QP_8, N_8, file_name_8);
imo_8 = decompress_im(Qmat, QP_8, N_8 , file_name_8);
psnr_8 = calculate_psnr(imo_8, im);
rate_all_8(i)=rate_8;
psnr_all_8(i)=psnr_8;
i=i+1;
end
for QP_16=1:14:99
rate_16 = compress_im(im, Qmat, QP_16, N_16, file_name_16);
imo_16 = decompress_im(Qmat, QP_16, N_16 , file_name_16);
psnr_16 = calculate_psnr(imo_16, im);
rate_all_16(k)=rate_16;
psnr_all_16(k)=psnr_16;
k=k+1;
end
plot(rate_all_8,psnr_all_8,rate_all_16,psnr_all_16);
legeng('N=8','N=16')
xlabel('bit rate');
ylabel('psnr')
title('N=8 and N=16');
grid on;