Gray = imread('lenna512.bmp');    
[M,N] = size(Gray);
 Gary1 = zeros(M, N);%bilinear interpolation
 Gray1 = ( Gray - rem(Gray, 16) ) / 16;
 figure; 
 subplot(1, 2, 1); imshow(Gray,gray(256)); title('256 * 256');
 subplot(1, 2, 2); imshow(Gray1,gray(16)); title('16 * 16');
 %Display the image 