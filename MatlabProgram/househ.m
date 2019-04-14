function H=househ(x)
%功能：对于向量x,构造Householder变换矩阵H,使得Hx=(*,0,...,0)',
%其中|*|=norm(x,2).
%输入: 列向量x.
%输出: Householder变换矩阵H.
n=length(x);
I=diag(ones(1,n));
sn=sign(x(1));
if sn==0  sn=1; end
z=x(2:n);
if norm(z,inf)==0
   H=I;return;
end
sigma=-sn*norm(x,2);
u=x;
u(1)=u(1)-sigma;
lo=sigma*(sigma-x(1));
H=I-1.0/lo*u*u';