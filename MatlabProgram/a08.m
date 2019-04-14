%a08.m
n=input('input a number n=');
switch mod(n,3)
   case 0
       fprintf('%d is a multiple of 3\n',n)
   otherwise
        fprintf('%d is not a multiple of 3\n',n)
end