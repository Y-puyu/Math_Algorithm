%maaitken.m
function x=maaitken(phi,x0,ep,N)
%用途：用Aitken-Steffensen加速方法求f(x)=0的解
%格式：x=maaitken(phi,x0,ep,N)  phi为迭代函数，x0为迭代初值，ep 
%为精度（默认1e-4），N为最大迭代次数（默认500），x返回近似根
if nargin<4,N=500;end
if nargin<3,ep=1e-4;end
k=0;
while k<N
    y=feval(phi,x0); z=feval(phi,y);
    x=x0-(y-x0)^2/(z-2*y+x0);
    if abs(x-x0)<ep
        break;
    end
    x0=x; k=k+1;
end
if k==N, warning('已达迭代次数上限'); end
disp(['k= ',num2str(k)])
