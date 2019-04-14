%qralg.m
function [iter,D]=qralg(A)
%用途：用基本QR算法求实方阵的全部特征值.
%输入: n阶实方阵A.
%输出: 迭代次数iter, A全部特征值D.
%调用函数： hessen.m,qrtran.m,eig--仅用于1、2矩阵。
ep=0.5*1e-4;[n,n]=size(A);
D=zeros(1,n); i=n; m=n;
iter=0;  %初始化
A=hessen(A);  %化矩阵A为Hessenbeg形
%用基本QR算法进行迭代
while(n>0)
    if m<=2
        la=eig(A(1:m,1:m));
        D(1:m)=la';
        break;
    end
    iter=iter+1;
    A=qrtran(m,A); %对A的左上角的m阶对角块作QR变换
    for k=m-1:-1:1
        if abs(A(k+1,k))<ep
            if m-k<=2
                la=eig(A(k+1:m,k+1:m));
                j=i-m+k+1;
                D(j:i)=la';
                i=j-1;
                m=k;
                break;
            end
        end
    end
end