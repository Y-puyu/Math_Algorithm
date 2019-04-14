%malagr.m
function yy=malagr(x,y,xx)
%用途：拉格朗日插值法求解
%格式：yy=malagr(x,y,xx), x是节点向量，y是节点对应的函数值向量，
% xx是插值点（可以是多个），，yy返回插值结果
m=length(x);n=length(y);
if m~=n, error('向量x与y的长度必须一致');end
s=0;
for i=1:n
    t=ones(1,length(xx));
    for j=1:n
        if j~=i
            t=t.*(xx-x(j))/(x(i)-x(j));
        end
    end
    s=s+t*y(i);
end
 yy=s;
end
