%machase.m
function x=machase(a,b,c,d)
%��;��׷�Ϸ������ԽǷ�����Ax=d
%��ʽ��x= machase(a,b,c,d)  aΪ���¶Խ���Ԫ��������b���Խ�Ԫ��
% ������cΪ���϶Խ���Ԫ��������dΪ�Ҷ�������x���ؽ�����
n=length(a);
for k=2:n
    b(k)=b(k)-a(k)/b(k-1)*c(k-1);
    d(k)=d(k)-a(k)/b(k-1)*d(k-1);
end
x(n)=d(n)/b(n);
for k=n-1:-1:1
    x(k)=(d(k)-c(k)*x(k+1))/b(k);
end
