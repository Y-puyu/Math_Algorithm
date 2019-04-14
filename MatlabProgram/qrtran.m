function A=qrtran(m,A)
%���ܣ��Ծ���A�����Ͻǵ�m�׶Խǿ���QR�任������Givens�任��QR�ֽ�A=QR��
%�������Ʊ任A:=Q'AQ=RQ.
%����: n��HessenbergA������A(m+1,m)=0,m>2.
%���: �任���Hessenberg�ξ���A.
Q=diag(ones(1,m));
for i=1:m-1
    xi=A(i,i);
    xk=A(i+1,i);
    if xk~=0
        d=sqrt(xi^2+xk^2);
        c=xi/d;
        s=xk/d;
        J=[c, s;-s,c];
        A(i:i+1,i:m)=J*A(i:i+1,i:m);
        Q(1:m,i:i+1)=Q(1:m,i:i+1)*J';
    end
end
A(1:m,1:m)=A(1:m,1:m)*Q;