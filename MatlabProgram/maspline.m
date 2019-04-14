%maspline.m
function m=maspline(x,y,dy0,dyn,xx)
%用途：三阶样条插值（一阶导数边界条件）
%格式：m=maspline(x,y,dy0,dyn,xx), x为节点向量，y为数据，
%dy0,dyn为左右两端点的一阶导数如果xx缺省，则输出各节点的
%的一阶导数值，，m为xx的三阶样条插值
format short;
n=length(x)-1;  %计算小区间的个数
h=diff(x);  lambda=h(2:n)./(h(1:n-1)+h(2:n)); mu=1-lambda;
theta=3*(lambda.*diff(y(1:n))./h(1:n-1)+mu.*diff(y(2:n+1))./h(2:n));
theta(1)=theta(1)-lambda(1)*dy0;  theta(n-1)=theta(n-1)-lambda(n-1)*dyn; 
%追赶法解散对焦方程组
dy=machase(lambda,2*ones(1:n-1),mu,theta);
%若给插值点，计算插值
m=[dy0;dy;dyn];
if nargin>=5
    s=zeros(size(xx));
    for i=1:n
        if i==1
            kk=find(xx<=x(2));
        elseif i==n
            kk=find(xx>x(n));
        else
            kk=find(xx>x(i)&xx<=x(i+1));
        end
        xbar=(xx(kk)-x(i))/h(i);
        s(kk)=alpha0(xbar)*y(i)+alpha1(xbar)*y(i+1)+...
            +h(i)*beta0(xbar)*m(i)+h(i)*beta1(xbar)*m(i+1);
    end
    m=s;
end
%追赶法
function x=machase(a,b,c,d)
n=length(a);
for k=2:n
    b(k)=b(k)-a(k)/b(k-1)*c(k-1);
    d(k)=d(k)-a(k)/b(k-1)*d(k-1);
end
x(n)=d(n)/b(n);
for k=n-1:-1:1
    x(k)=(d(k)-c(k)*x(k+1))/b(k);
end
x=x(:);
%基函数
function y=alpha0(x)
y=2*x.^3-3*x.^2+1;
function y=alpha1(x)
y=-2*x.^3+3*x.^2;
function y=beta0(x)
y=x.^3-2*x.^2+x;
function y=beta1(x)
y=x.^3-x.^2;
