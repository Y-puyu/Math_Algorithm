%maiter.m
function x=maiter(phi,x0,ep,N)
%��;���ü򵥵�����������Է���f(x)=0�и�����[a,b]�е�һ����
%��ʽ��x= maiter(phi,x0,ep,N)  funΪf(x)�ĺ��������x0Ϊ��ֵ��ep
%Ϊ���ȣ�Ĭ��1e-4����NΪ������������Ĭ��500����x���ؽ��Ƹ�
if nargin<4,N=500;end
if nargin<3,ep=1e-4;end 
k=0;
while k<N
   x=feval(phi,x0);
   if abs(x-x0)<ep
      break;
   end
   x0=x;k=k+1;
end
if k==N, warning('�Ѵ������������'); end
disp(['k=',num2str(k)])

