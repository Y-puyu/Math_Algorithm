%masor.m
function x=masor(A,b,omega,x0,ep,N)
%用途：用SOR法解线性方程组Ax=b
%格式：x=masor(A,b,omega,x0,ep,N)  A为系数矩阵，b为右端向量， 
%  omega为松弛因子（默认1.5）， x0为初始向量（默认零向量）， 
%  ep为精度（默认1e-6），N为（默认500次），x返回近似解向量
n=length(b);
if nargin<6,N=500;end
if nargin<5,ep=1e-6;end
if nargin<4,x0=zeros(n,1);end
if nargin<3,omega=1.5;end
x=zeros(n,1); k=0;
while k<N
    for i=1:n
        if i==1
            x1(1)=(b(1)-A(1,2:n)*x0(2:n))/A(1,1);
        else if i==n
                x1(n)=(b(n)-A(n,1:n-1)*x(1:n-1))/A(n,n);
            else
                x1(i)=(b(i)-A(i,1:i-1)*x(1:i-1)-A(i,i+1:n)*x0(i+1:n))/A(i,i);
            end
        end
        x(i)=(1-omega)*x0(i)+omega*x1(i);
     end
     if norm(x0-x,inf)<ep, break; end
     k=k+1;x0=x;
end
if k==N,Warning('已达到迭代次数上限');end
disp(['k= ',num2str(k)]) 
