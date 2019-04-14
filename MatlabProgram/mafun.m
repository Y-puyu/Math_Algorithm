 %mafun.m
function ff=mafun(t,y)
b=2.8;r=30;sigma=12;
%b=8/3.0;r=28;sigma=10;
ff(1)=-sigma*y(1)+sigma*y(2);
ff(2)=r*y(1)-y(2)-y(1)*y(3);
ff(3)=y(1)*y(2)-b*y(3);
%alpha=0.2; mu=5.7;
%ff(1)=-y(2)-y(3);
%ff(2)=y(1)+alpha*y(2);
%ff(3)=alpha+y(1)*y(3)-mu*y(3);
ff=ff(:);