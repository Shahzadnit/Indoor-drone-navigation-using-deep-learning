function [ xl,yl,xh,yh,X_f,Y_f,theta,x_comp1 ] = find_theta_d_coor(im)




[x y z] = size(im);
%imtool(im)
%imshow(im)
%zoom on;
for j=1:y
    for i=1:x
        r = im(i,j,1);
        g = im(i,j,2);
        b = im(i,j,3);
        if ~(r > 100 && r > (g+b)  )
            im(i,j,1) = 255;
             im(i,j,2) = 255;
              im(i,j,3) = 255;
        end
    end
end
[iy ix]=find((im(:,:,2)<50) &(im(:,:,3)<50) & im(:,:,1)>240);

[yh, idh] = max(iy);
[yl,idl]=min(iy);
xh=ix(idh);
xl=ix(idl);

xl;
yl;
xh;
yh;
X_f=xl;
Y_f=yl-45;
t1=xl-xh;
x_comp1=abs(t1);
%y_comp=yh-yl
X=(yl-yh)./(xl-xh);

theta=atand(X)  ;
           
d=xh;   
if(theta<0)
    theta=180+theta;
end
theta;
radi=theta*(pi/180) ;

end











