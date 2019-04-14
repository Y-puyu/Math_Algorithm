%maromb.m
function s=maromb(fun,a,b,tol)
%��;����������ʽ�����
%��ʽ��s=maromb(fun,a,b,tol), fun�Ǳ���������a, b�ǻ����¡�����
%tol������s���ػ��ֽ���ֵ
tic
if nargin<4,tol=1e-4;end
i=1;j=1;h=b-a;
T(1,1)=h*(feval(fun,a)+feval(fun,b))/2;
T(i+1,1)=T(i,1)/2+sum(feval(fun,a+h/2:h:b-h/2))*h/2;
T(i+1,j+1)=(4^j*T(i+1,j)-T(i,j))/(4^j-1);
while abs(T(i+1,i+1)-T(i,i))>tol
    i=i+1;h=h/2; 
    T(i+1,1)=T(i,1)/2+sum(feval(fun,a+h/2:h:b-h/2))*h/2;
    for j=1:i
        T(i+1,j+1)=(4^j*T(i+1,j)-T(i,j))/(4^j-1);
    end    
end
%T
s=T(i+1,j+1);
t=toc
        
    

