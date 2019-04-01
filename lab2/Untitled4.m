 X1=imread('lenna512_low_dynamic_range.bmp');
 figure,
 imshow(X1)
 x0=0;y0=0;%???????????
 x1=20;y1=10;
 x2=180;y2=230;
 figure,plot([x0,x1,x2],[y0,y1,y2])
 axis tight,xlabel('f'),ylabel('g')
 title('intensitytransformation')%??????
 r1=y1/x1;
 r2=(y2-y1)/(x2-x1);
 r3=(255-y2)/(255-x2);
 [m,n]=size(X1);
 X2=double(X1);
 for i=1:m
   for j=1:n
   f=X2(i,j);
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
         
 figure,imshow(mat2gray(y))