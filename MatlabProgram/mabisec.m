%mabisec.m
function x=mabisec(fun,a,b,ep)
%用途：用二分法求非线性方程f(x)=0有根区间[a,b]中的一个根
%格式：x=mabisec(fun,a,b,ep)  fun为函数表达式，
% a, b为区间左右端点，ep为精度，x返回近似根
tic;
x=(a+b)/2.0;
k=0;
while abs(feval(fun,x))>ep|(b-a>ep)
    if feval(fun,x)*feval(fun,a)<0
        b=x;
    else
        a=x;
    end
    x=(a+b)/2.0;
    k=k+1;
end
disp(['k=',num2str(k)])
t=toc
