%masimp.m
function s=masimp(fun,a,b,n)
%通途：用复辛普生形公式求积分。
%格式：s=masimp(fun,a,b,n)  fun为被积函数，a,b为积分区间的左右端点，
% n为区间的等分数，s返回数值积分值
tic
h=(b-a)/n;
s1=0; s2=0;
for k=1:(n-1)
    x=a+h*k;
    s1=s1+feval(fun,x);
end
for k=0:(n-1)
    x=a+h*(k+1/2);
    s2=s2+feval(fun,x);
end
s=h/6*(feval(fun,a)+feval(fun,b)+2*s1+4*s2);
err=pi-s
t=toc