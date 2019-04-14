%maadams4.m
function [x,y]=maadams4(dyfun,xspan,y0,h)
%��;��4��AdamsԤ��-У����ʽ�ⳣ΢�ַ���y'=f(x, y), y(x0)=y0
%��ʽ��[x, y]=maadams4(dyfun,xspan,y0,h)    dyfunΪ����f(x, y), 
%xspanΪ�������[x0, xn], y0Ϊ��ֵ, hΪ����, x���ؽڵ�, y������ֵ��
 x=xspan(1):h:xspan(2);
 [xx,yy]=marunge4(dyfun,[x(1),x(4)],y0,h);
 y(1)=yy(1);y(2)=yy(2);y(3)=yy(3);y(4)=yy(4);
 for n=4:(length(x)-1)
     p=y(n)+h/24*(55*feval(dyfun,x(n),y(n))-59*feval(dyfun,x(n-1),y(n-1))...
           +37*feval(dyfun,x(n-2),y(n-2))-9*feval(dyfun,x(n-3),y(n-3)));
     y(n+1)=y(n)+h/24*(feval(dyfun,x(n-2),y(n-2))-5*feval(dyfun,x(n-1),y(n-1))...
           +19*feval(dyfun,x(n),y(n))+9*feval(dyfun,x(n+1),p));
 end
 x=x'; y=y';