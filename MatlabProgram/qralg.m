%qralg.m
function [iter,D]=qralg(A)
%��;���û���QR�㷨��ʵ�����ȫ������ֵ.
%����: n��ʵ����A.
%���: ��������iter, Aȫ������ֵD.
%���ú����� hessen.m,qrtran.m,eig--������1��2����
ep=0.5*1e-4;[n,n]=size(A);
D=zeros(1,n); i=n; m=n;
iter=0;  %��ʼ��
A=hessen(A);  %������AΪHessenbeg��
%�û���QR�㷨���е���
while(n>0)
    if m<=2
        la=eig(A(1:m,1:m));
        D(1:m)=la';
        break;
    end
    iter=iter+1;
    A=qrtran(m,A); %��A�����Ͻǵ�m�׶Խǿ���QR�任
    for k=m-1:-1:1
        if abs(A(k+1,k))<ep
            if m-k<=2
                la=eig(A(k+1:m,k+1:m));
                j=i-m+k+1;
                D(j:i)=la';
                i=j-1;
                m=k;
                break;
            end
        end
    end
end