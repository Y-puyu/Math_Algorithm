%mapowerp.m
function [lambda,v]=mapowerp(A,x,p,epsilon,max1)
%用途：用原点加速幂法求矩阵的模最大特征值和对应的特征向量
%格式：[lambda, v]=mapowerp(A,x,epsilon,max1)  A为n阶方阵，x为初始向量，
%epsilon为上限，max1为循环次数，p为原点位移参数。lambda返回按模最大的
%特征值，v返回对应的特征向量。
lambda=0;k=0;err=1;
n=length(x)
A=A-p*eye(n);
while ((k<max1)&(err>epsilon))
    y=A*x;
    [m,j]=max(abs(y));
    m=y(j);
    x=y/m;
    err=abs(lambda-m);
    lambda=m;
    k=k+1;
end
k
lambda=lambda-p;
v=x;
