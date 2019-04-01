function [imo] = decompress_im(Qmat, QP, N, file_name)
Qmat=Qmat(1:N,1:N);
m=512;
n=512;
vct_in=csvread(file_name);
vct_out= entropy_dec(vct_in);
new=reshape(vct_out,[m n]);

if QP>50
    S=(100-QP)/50;
else 
        S=50/QP;
end

for i=1:N:m-1
    for j=1:N:n-1
        im_dec=new(i:i+(N-1),j:j+(N-1));
        im_dec_q=(S*Qmat).*im_dec;
        imo(i:i+(N-1),j:j+(N-1))=idct2(im_dec_q);
    end
end
imo=uint8(imo);

