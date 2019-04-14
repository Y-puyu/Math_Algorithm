%mainvp.m
function [lambda,v]=mainvp(A,x,p,epsilon,max1)
%用途：用原点位移加速反幂法求矩阵的模最大特征值和对应的特征向量
%格式：[lambda, v]=mainvp(A,x,epsilon,max1)  A为n阶方阵，x为初始向量，
%epsilon为上限，max1为循环次数，p为模最大的近似特征值。lambda返回按
%模最大的特征值，v返回对应的特征向量。
lambda=0;k=0;err=1;mu=0.5;
n=length(x);
A=A-p*eye(n);
[L,U,P]=lu(A);
while (k<max1)&(err>epsilon)
    [m,j]=max(abs(x));
    m=x(j);
    y=x./m;
    z=L\(P*y);
    x=U\z;
    err=abs(1/m-1/mu);
    k=k+1;
    mu=m;
end
k
lambda=p+1/m;
v=y;
