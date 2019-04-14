%machol.m
function [x,l,d]=machol(A,b)
%用途：用Cholesky分解法解方程组Ax=b
format short
%LDL'分解
n=length(b);
d=zeros(1,n); l=eye(n,n); 
d(1)=A(1,1);    l(2:n,1)=A(2:n,1)/d(1);
d(2)=A(2,2)-l(2,1)*l(2,1)*d(1);
for i=3:n
    for j=2:(i-1)
        s=0;
        for k=1:(j-1)
            s=s+d(k)*l(i,k)*l(j,k);
        end
        l(i,j)=(A(i,j)-s)/d(j);
    end
    s=0;
    for j=1:(i-1)
        s=s+d(j)*l(i,j)*l(i,j);
    end
    d(i)=A(i,i)-s;
end
%求解下三角方程组 Ly=b （向前消去法）
y=zeros(n,1);
y(1)=b(1); 
for i=2:n
    y(i)=b(i)-l(i,1:i-1)*y([1:i-1]);
end
% 求解对角方程组 Dz=y 
for i=1:n
    z(i)=y(i)/d(i);
end
%求解上三角方程组 L'x=z （向前消去法）
ll=l';
x=zeros(n,1);
x(n)=z(n);
for i=(n-1):-1:1
    x(i)=z(i)-ll(i,i+1:n)*x(i+1:n);
end
x=x';