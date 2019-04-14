function A=qrtran(m,A)
%功能：对矩阵A的左上角的m阶对角块作QR变换：先用Givens变换作QR分解A=QR，
%再作相似变换A:=Q'AQ=RQ.
%输入: n阶HessenbergA，其中A(m+1,m)=0,m>2.
%输出: 变换后的Hessenberg形矩阵A.
Q=diag(ones(1,m));
for i=1:m-1
    xi=A(i,i);
    xk=A(i+1,i);
    if xk~=0
        d=sqrt(xi^2+xk^2);
        c=xi/d;
        s=xk/d;
        J=[c, s;-s,c];
        A(i:i+1,i:m)=J*A(i:i+1,i:m);
        Q(1:m,i:i+1)=Q(1:m,i:i+1)*J';
    end
end
A(1:m,1:m)=A(1:m,1:m)*Q;