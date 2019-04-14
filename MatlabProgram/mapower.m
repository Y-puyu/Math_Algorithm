%mapower.m
function [lambda,v]=mapower(A,x,epsilon,max1)
%��;�����ݷ�������ģ�������ֵ�Ͷ�Ӧ����������
%��ʽ��[lambda,v]=mapower(A,x0,epsilon,max1)  AΪn�׷���x0Ϊ��ʼ������
%epsilonΪ���ޣ�max1Ϊѭ��������lambda���ذ�ģ��������ֵ��v���ض�Ӧ������������
lambda=0;k=0;err=1;
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
v=x;
