function [cen_x cen_y] = ref_point_find1(im)



im= imresize(im, [676 1200]);

[x y z] = size(im);
cen_x=0;
cen_y=0;
c=0;
for j=1:y
    for i=1:x
        r = im(i,j,1);
        g = im(i,j,2);
        b = im(i,j,3);
       if ~(r == 0 && g > (r-b)  )
       
             im(i,j,1) = 255;
             im(i,j,2) = 255;
              im(i,j,3) = 255;
       else
           cen_y=cen_y+i;
           cen_x=cen_x+j;
           c=c+1;
           
           
        end
    end
end
cen_x=floor(cen_x/c);
cen_y=floor(cen_y/c);
%imtool(im)











end

