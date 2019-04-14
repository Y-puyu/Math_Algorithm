%a10.m
function [x,y]=a10(g,t)  %g表示总个数，t表示总腿数
i=1;  %i表示鸡的个数
while i
    if rem(t-i*2,4)==0 & (i+(t-i*2)/4)==g
       break;
    end
    i=i+1;
end
x=i;
y=(t-2*i)/4;