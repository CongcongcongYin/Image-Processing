function im2 = enhance(im1,x1,y1,x2,y2)
[m,n]=size(im1);
im2=double(im1); 

r1=y1/x1;
r2=(y2-y1)/(x2-x1);
r3=(255-y2)/(255-x2);

for i=1:m
   for j=1:n
   f=im2(i,j);
   y(i,j)=0;
     if(f<x1)
     y(i,j)=r1*f;
       elseif(f>=x1)&(f<=x2)
       y(i,j)=r2*(f-x1)+y1;
         elseif(f>=x2)
         y(i,j)=r3*(f-x2)+y2;
     end
   end
 end
end
