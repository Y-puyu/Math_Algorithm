%mapowerp.m
function [lambda,v]=mapowerp(A,x,p,epsilon,max1)
%��;����ԭ������ݷ�������ģ�������ֵ�Ͷ�Ӧ����������
%��ʽ��[lambda, v]=mapowerp(A,x,epsilon,max1)  AΪn�׷���xΪ��ʼ������
%epsilonΪ���ޣ�max1Ϊѭ��������pΪԭ��λ�Ʋ�����lambda���ذ�ģ����
%����ֵ��v���ض�Ӧ������������
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
