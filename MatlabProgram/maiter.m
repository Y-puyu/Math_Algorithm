%maiter.m
function x=maiter(phi,x0,ep,N)
%用途：用简单迭代法求非线性方程f(x)=0有根区间[a,b]中的一个根
%格式：x= maiter(phi,x0,ep,N)  fun为f(x)的函数句柄，x0为初值，ep
%为精度（默认1e-4），N为最大迭代次数（默认500），x返回近似根
if nargin<4,N=500;end
if nargin<3,ep=1e-4;end 
k=0;
while k<N
   x=feval(phi,x0);
   if abs(x-x0)<ep
      break;
   end
   x0=x;k=k+1;
end
if k==N, warning('已达迭代次数上限'); end
disp(['k=',num2str(k)])

