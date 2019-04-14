%a14.m
clear; close;
t=0:0.1:20; r=exp(-0.2*t); theta=0.5*pi*t;
x=r.*cos(theta); y=r.*sin(theta); z=sqrt(t);
subplot(1,2,1); plot3(x,y,z);
title('ÂÝÐýÏß');
xlabel('XÖá x=e^{-0.2t}cos(\pit/2)');
ylabel('YÖá');   zlabel('ZÖá');
subplot(1,2,2);  plot3(x,y,z);
axis([-1 1 -1 1 0 4]);
grid on;