%maeuler.m
function [x, y]=maeuler(dyfun,xspan,y0,h)
% 通途：改进欧拉格式解常微分方程y'=f(x,y), y(x0)=y0
%  格式：[x,y]=maeuler(dyfun,xspan,y0,h)  dyfun为函数f(x,y), xspan为
%  求解区间[x0,xn], y0为初值y(x0), h为步长, x返回节点，y返回数值解
format short;
x=xspan(1):h:xspan(2); y(1)=y0;
for n=1:(length(x)-1)
    k1=feval(dyfun,x(n),y(n));
    y(n+1)=y(n)+h*k1;
    k2=feval(dyfun,x(n+1),y(n+1));
    y(n+1)=y(n)+h*(k1+k2)/2;
end
x=x'; y=y';