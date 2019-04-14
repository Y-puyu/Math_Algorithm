%marunge.m
function marunge()
xx=-5:0.05:5; y=1./(1+xx.^2);
x1=-5:2:5;  y1=1./(1+x1.^2);
x2=-5:1:5;  y2=1./(1+x2.^2);
yy1=malagr(x1,y1,xx);
yy2=malagr(x2,y2,xx);
plot(xx,yy1,'-.'); hold on
plot(xx,yy2,'r-.');
plot(xx,y);
text(1.5,0.5,'L5');
text(4.0,1.5,'L10');
