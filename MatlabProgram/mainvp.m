%mainvp.m
function [lambda,v]=mainvp(A,x,p,epsilon,max1)
%��;����ԭ��λ�Ƽ��ٷ��ݷ�������ģ�������ֵ�Ͷ�Ӧ����������
%��ʽ��[lambda, v]=mainvp(A,x,epsilon,max1)  AΪn�׷���xΪ��ʼ������
%epsilonΪ���ޣ�max1Ϊѭ��������pΪģ���Ľ�������ֵ��lambda���ذ�
%ģ��������ֵ��v���ض�Ӧ������������
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
