%marunge4.m
function [x,y]=marunge4(dyfun,xspan,y0,h)
%��;��4�׾������������ʽ�ⳣ΢�ַ���y'=f(x, y), y(x0)=y0
%��ʽ��[x, y]=marunge4(dyfun,xspan,y0,h)    dyfunΪ����f(x,y), 
%xspanΪ�������[x0, xn], y0Ϊ��ֵ, hΪ����, x���ؽڵ�, y������ֵ��
 format short;
 x=xspan(1):h:xspan(2);
 y(1)=y0;
 for n=1:(length(x)-1)
     k1=feval(dyfun, x(n), y(n));
     k2=feval(dyfun, x(n)+h/2, y(n)+h/2*k1);
     k3=feval(dyfun, x(n)+h/2, y(n)+h/2*k2);
     k4=feval(dyfun, x(n+1), y(n)+h*k3);
     y(n+1)=y(n)+h*(k1+2*k2+2*k3+k4)/6;
 end
 x=x'; y=y';
 
