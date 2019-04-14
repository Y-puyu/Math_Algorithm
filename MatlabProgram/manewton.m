%manewton.m
function x=manewton(fun,dfun,x0,ep,N)
%��;����ţ�ٷ��������Է���f(x)=0
%��ʽ��x=manewton(fun,dfun,x0,ep,N)  fun��dfun�ֱ�Ϊ��ʾf(x)��
%���������x0Ϊ������ֵ��epΪ���ȣ�Ĭ��1e-4����NΪ������
%������Ĭ��Ϊ500����x���ؽ��Ƹ�
if nargin<5,N=500;end
if nargin<4,ep=1e-4;end
k=0;
while k<N
    x=x0-feval(fun,x0)/feval(dfun,x0);
    if abs(x-x0)<ep
        break;
    end
    x0=x; k=k+1;
end
if k==N, warning('�Ѵ������������'); end
disp(['k=',num2str(k)])
