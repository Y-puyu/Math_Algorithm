%maaitken.m
function x=maaitken(phi,x0,ep,N)
%��;����Aitken-Steffensen���ٷ�����f(x)=0�Ľ�
%��ʽ��x=maaitken(phi,x0,ep,N)  phiΪ����������x0Ϊ������ֵ��ep 
%Ϊ���ȣ�Ĭ��1e-4����NΪ������������Ĭ��500����x���ؽ��Ƹ�
if nargin<4,N=500;end
if nargin<3,ep=1e-4;end
k=0;
while k<N
    y=feval(phi,x0); z=feval(phi,y);
    x=x0-(y-x0)^2/(z-2*y+x0);
    if abs(x-x0)<ep
        break;
    end
    x0=x; k=k+1;
end
if k==N, warning('�Ѵ������������'); end
disp(['k= ',num2str(k)])
