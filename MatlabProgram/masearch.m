%masearch.m
function masearch(fun,a,b,h)
%��;�����������Է���f(x)=0���и�����
%��ʽ��masearch(fun,a,b,h)  funΪ�������ʽ��
% a, bΪ�������Ҷ˵㣬hΪ��������
n=(b-a)/h; a1=zeros(1,n); b1=zeros(1,n);
aa=a; bb=aa+h; k=1;
while bb<b
    if feval(fun,aa)*feval(fun,bb)<0
        a1(k)=aa; b1(k)=bb;
    else
        aa=bb; bb=aa+h; continue;
    end
    aa=bb; bb=aa+h; k=k+1;
end
for i=1:k
    if a1(i)-b1(i)~=0
        [a1(i),b1(i)]
    end
end
        

