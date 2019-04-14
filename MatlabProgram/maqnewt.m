%maqnewt.m
function x=maqnewt(fun,x0,x1,ep,N)
%��;������ɢţ�ٷ��������Է���f(x)=0
%��ʽ��x=maqnewt(fun,,x0,x1,ep,N)  funΪ��ʾf(x)�ĺ��������
% x0��x1Ϊ������ֵ��epΪ���ȣ�Ĭ��1e-4����NΪ������
%������Ĭ��Ϊ500����x���ؽ��Ƹ�
if nargin<5,N=500;end
if nargin<4,ep=1e-4;end
k=0;
while k<N
    x=x1-(x1-x0)*feval(fun,x1)/(feval(fun,x1)-feval(fun,x0));
    if abs(x-x1)<ep
        break;
    end
    x0=x1;x1=x; k=k+1;
end
if k==N, warning('�Ѵ������������'); end
disp(['k=',num2str(k)]) 