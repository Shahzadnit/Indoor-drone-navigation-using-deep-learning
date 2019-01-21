function [ im ] = line_det(im)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here



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















end

