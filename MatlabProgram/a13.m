%a13.m
clear;  close;
xa=-18:0.5:18;  ya=xa;
[x,y]=meshgrid(xa,ya);
z=sin(sqrt(x.^2+y.^2))./(sqrt(x.^2+y.^2)+eps);
mesh(x,y,z)
xlabel('x');  ylabel('y'); zlabel('z');