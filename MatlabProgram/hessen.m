function A=hessen(A)
%���ܣ���Householder�任������AΪHessenberg��.
%����: n��ʵ����A.
%���: A��Hessenberg��.
%���ú����� househ.m 
[n,n]=size(A);
for k=1:(n-2)
    x=A(k+1:n,k);
    H=househ(x);
    A(k+1:n,1:n)=H*A(k+1:n,1:n);
    A(1:n,k+1:n)=A(1:n,k+1:n)*H;
end
