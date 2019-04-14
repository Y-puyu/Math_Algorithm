%a11.m  %主程序
clear;
a=input('Please input a number:');  %输入一个数
b=input('Please input a number:');  %输入另一个数
nummax(a,b);   %调用子函数
%
%nummax.m   %子函数程序
function nummax(a,b)
if a<=0 | b<=0
   disp('Input error')
   return;
   else if a>b
       fprintf('The larger number is %f\n',a);
   else
       fprintf('The larger number is %f\n',b);
   end
end