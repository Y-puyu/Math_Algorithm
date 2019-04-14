%manewton.m
function x=manewton(fun,dfun,x0,ep,N)
%用途：用牛顿法求解非线性方程f(x)=0
%格式：x=manewton(fun,dfun,x0,ep,N)  fun和dfun分别为表示f(x)的
%函数句柄，x0为迭代初值，ep为精度（默认1e-4），N为最大迭代
%次数（默认为500），x返回近似根
if nargin<5,N=500;end
if nargin<4,ep=1e-4;end
k=0;
while k<N
    x=x0-feval(fun,x0)/feval(dfun,x0);
    if abs(x-x0)<ep
        break;
    end
    x0=x; k=k+1;
end
if k==N, warning('已达迭代次数上限'); end
disp(['k=',num2str(k)])
