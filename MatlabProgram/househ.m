function H=househ(x)
%���ܣ���������x,����Householder�任����H,ʹ��Hx=(*,0,...,0)',
%����|*|=norm(x,2).
%����: ������x.
%���: Householder�任����H.
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