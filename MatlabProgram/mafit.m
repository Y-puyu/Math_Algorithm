%mafit.m
function p=mafit(x,y,m)
% 用途：多项式拟合
%格式：p=mafit(x,y,m),  x, y为数据向量，m为拟合多项式次数，p返回
%多项式系数降幂排列
format short;
A=zeros(m+1,m+1);
for i=0:m
    for j=0:m
        A(i+1,j+1)=sum(x.^(i+j));
    end
    b(i+1)=sum(x.^i.*y);
end
a=A\b';
p=fliplr(a');  %按降幂排列