%maeuler.m
function [x, y]=maeuler(dyfun,xspan,y0,h)
% ͨ;���Ľ�ŷ����ʽ�ⳣ΢�ַ���y'=f(x,y), y(x0)=y0
%  ��ʽ��[x,y]=maeuler(dyfun,xspan,y0,h)  dyfunΪ����f(x,y), xspanΪ
%  �������[x0,xn], y0Ϊ��ֵy(x0), hΪ����, x���ؽڵ㣬y������ֵ��
format short;
x=xspan(1):h:xspan(2); y(1)=y0;
for n=1:(length(x)-1)
    k1=feval(dyfun,x(n),y(n));
    y(n+1)=y(n)+h*k1;
    k2=feval(dyfun,x(n+1),y(n+1));
    y(n+1)=y(n)+h*(k1+k2)/2;
end
x=x'; y=y';