%a11.m  %������
clear;
a=input('Please input a number:');  %����һ����
b=input('Please input a number:');  %������һ����
nummax(a,b);   %�����Ӻ���
%
%nummax.m   %�Ӻ�������
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