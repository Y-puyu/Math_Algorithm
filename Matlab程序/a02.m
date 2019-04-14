%a02.m
load logo        %装载LOGO数据
surf(L,R)        %根据数据绘制LOGO图标
n=size(L,1)      %获取数据矩阵维数
axis off         %关闭坐标轴
axis([1 n 1 n -0.4 0.5])   %设置图形显示的区域
view(-37.5,40)   %设置视点