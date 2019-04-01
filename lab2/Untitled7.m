f = imread('lenna512_AWGN.bmp');
n = 3; %???3????
template = ones(n); 
[height, width] = size(f);
x1 = double(f);
x2 = x1;
for i = 1:height-n+1
    for j = 1:width-n+1
        c = x1(i:i+n-1,j:j+n-1).*template;
        s = sum(sum(c));
        x2(i+(n-1)/2,j+(n-1)/2) = s/(n*n);
    end
end

g = uint8(x2);
imshow(g);
psnr = calculate_psnr(f,g)