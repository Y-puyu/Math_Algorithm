%matrap.m
function s=matrap(fun,a,b,n)
%ͨ;���ø������ι�ʽ����֡�
%��ʽ��s=matrap(fun,a,b,n)  funΪ����������a,bΪ������������Ҷ˵㣬
% nΪ����ĵȷ�����s������ֵ����ֵ
tic
h=(b-a)/n;
s=0;
for k=1:n-1
    x=a+h*k;
    s=s+feval(fun,x);
end
s=h*(feval(fun,a)+feval(fun,b))/2.0+h*s;
t=toc
err=pi-s