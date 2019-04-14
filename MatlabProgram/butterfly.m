%butterfly.m
 [t, y]=marunge4s(@mafun,[0 500],[0 1 2],0.005);
 plot(y(:,1), y(:,3),'r'); axis([-25 25  0 55]); 
%plot(y(:,1), y(:,2),'r');
% plot(y(:,2), y(:,3),'r');