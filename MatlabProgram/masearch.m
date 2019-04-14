%masearch.m
function masearch(fun,a,b,h)
%用途：搜索非线性方程f(x)=0的有根区间
%格式：masearch(fun,a,b,h)  fun为函数表达式，
% a, b为区间左右端点，h为搜索步长
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
        

