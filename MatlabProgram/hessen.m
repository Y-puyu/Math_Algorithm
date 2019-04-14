function A=hessen(A)
%功能：用Householder变换化矩阵A为Hessenberg形.
%输入: n阶实方阵A.
%输出: A的Hessenberg形.
%调用函数： househ.m 
[n,n]=size(A);
for k=1:(n-2)
    x=A(k+1:n,k);
    H=househ(x);
    A(k+1:n,1:n)=H*A(k+1:n,1:n);
    A(1:n,k+1:n)=A(1:n,k+1:n)*H;
end
