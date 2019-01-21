I = imread('CL.JPG');
figure,imshow(I)



s1=0;
s2=0;
[y,x,cha]=size(I);
h=957;
g=386;


%# make sure the image doesn't disappear if we plot something else
hold on

%# define points (in matrix coordinates)
p1 = [0,0];
p2 = [g,h];

%# plot the points.
%# Note that depending on the definition of the points,
%# you may have to swap x and y
plot([p1(2),p2(2)],[p1(1),p2(1)],'Color','r','LineWidth',2)