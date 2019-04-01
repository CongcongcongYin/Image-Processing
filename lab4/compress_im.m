function [rate] = compress_im(im, Qmat, QP, N, file_name)
[m,n]=size(im);
Qmat=Qmat(1:N,1:N);
if QP>50
    S=(100-QP)/50;
else 
        S=50/QP;
end

for i=1:N:m-(N-1)
    for j=1:N:n-(N-1)
        im_new=im(i:i+(N-1),j:j+(N-1));
        im_dct=dct2(im_new);
        im_quantization(i:i+(N-1),j:j+(N-1))=round(im_dct./(S*Qmat));
    end
end
[vct_out] = entropy_enc(im_quantization);
csvwrite(file_name,vct_out)
size_f = fsize(file_name);
rate=(size_f*8)/(m*n);

        
        
    