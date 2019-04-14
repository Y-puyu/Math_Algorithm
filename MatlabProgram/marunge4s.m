%marunge4s.m
function [x,y]=marunge4s(dyfun,xspan,y0,h)
%用途：4阶经典龙格库塔格式解常微分方程组y'=f(x, y), y(x0)=y0
%格式：[x, y]=marunge4s(dyfun,xspan,y0,h) dyfun为向量函数f(x,y), xspan
%为求解区间[x0, xn], y0为初值向量, h为步长, x返回节点, y返回数值解向量
 x=xspan(1):h:xspan(2);
 y=zeros(length(y0),length(x));
 y(:,1)=y0(:);
 for n=1:(length(x)-1)
     k1=feval(dyfun, x(n), y(:,n));
     k2=feval(dyfun, x(n)+h/2, y(:,n)+h/2*k1);
     k3=feval(dyfun, x(n)+h/2, y(:,n)+h/2*k2);
     k4=feval(dyfun, x(n+1), y(:,n)+h*k3);
     y(:,n+1)=y(:,n)+h*(k1+2*k2+2*k3+k4)/6;
 end
 x=x'; y=y';