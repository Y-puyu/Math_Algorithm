%masimp.m
function s=masimp(fun,a,b,n)
%ͨ;���ø��������ι�ʽ����֡�
%��ʽ��s=masimp(fun,a,b,n)  funΪ����������a,bΪ������������Ҷ˵㣬
% nΪ����ĵȷ�����s������ֵ����ֵ
tic
h=(b-a)/n;
s1=0; s2=0;
for k=1:(n-1)
    x=a+h*k;
    s1=s1+feval(fun,x);
end
for k=0:(n-1)
    x=a+h*(k+1/2);
    s2=s2+feval(fun,x);
end
s=h/6*(feval(fun,a)+feval(fun,b)+2*s1+4*s2);
err=pi-s
t=toc