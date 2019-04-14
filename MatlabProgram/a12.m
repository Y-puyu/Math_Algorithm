 %a12.m
 x=-1:0.05:1;
 t0=1.0;  t1=x;
 t2=2*x.*t1-t0; t3=2*x.*t2-t1;
 subplot(2,2,1); plot(x,t0);
 title('Chebeshev T0');
 xlabel('x'); ylabel('y');
 subplot(2,2,2); plot(x,t1);
 title('Chebeshev T1');
 xlabel('x'); ylabel('y');
 subplot(2,2,3); plot(x,t2);
 title('Chebeshev T2');
 xlabel('x'); ylabel('y');
 subplot(2,2,4); plot(x,t3);
 title('Chebeshev T3');
 xlabel('x'); ylabel('y');