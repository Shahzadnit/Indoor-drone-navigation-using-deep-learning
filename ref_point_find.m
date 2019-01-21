function [upper_cord ] = ref_point_find(im)



[x y z] = size(im);
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

%[yh, idh] = max(iy);
[yl,idl]=min(iy);
%xh=ix(idh);
xl=ix(idl);

upper_cord=[yl,xl];
%lower_cord=[yh,xh]

% h=upper_cord(1);
% g=upper_cord(2);
% 
% 













end

