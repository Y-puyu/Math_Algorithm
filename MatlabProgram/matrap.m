%matrap.m
function s=matrap(fun,a,b,n)
%通途：用复化梯形公式求积分。
%格式：s=matrap(fun,a,b,n)  fun为被积函数，a,b为积分区间的左右端点，
% n为区间的等分数，s返回数值积分值
tic
h=(b-a)/n;
s=0;
for k=1:n-1
    x=a+h*k;
    s=s+feval(fun,x);
end
s=h*(feval(fun,a)+feval(fun,b))/2.0+h*s;
t=toc
err=pi-s