%mabisec.m
function x=mabisec(fun,a,b,ep)
%��;���ö��ַ�������Է���f(x)=0�и�����[a,b]�е�һ����
%��ʽ��x=mabisec(fun,a,b,ep)  funΪ�������ʽ��
% a, bΪ�������Ҷ˵㣬epΪ���ȣ�x���ؽ��Ƹ�
tic;
x=(a+b)/2.0;
k=0;
while abs(feval(fun,x))>ep|(b-a>ep)
    if feval(fun,x)*feval(fun,a)<0
        b=x;
    else
        a=x;
    end
    x=(a+b)/2.0;
    k=k+1;
end
disp(['k=',num2str(k)])
t=toc
