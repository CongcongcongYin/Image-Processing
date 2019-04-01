 im1=imread('lenna512_low_dynamic_range.bmp');
 figure,imshow(im1)
 x0=0;y0=0;
 x1=20;y1=10;
 x2=180;y2=230;
 figure,plot([x0,x1,x2],[y0,y1,y2])
 axis tight,xlabel('f'),ylabel('g')
 title('intensity transformation')  
 im2 = enhance(im1,x1,y1,x2,y2)
 figure,imshow(mat2gray(y))
 psnr = calculate_psnr(im1, im2)
