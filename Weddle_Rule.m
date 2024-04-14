clc 
clear all
format long
f=inline('x/(1+x*x)');
a = input('Give a : ');
b = input('Give b : ');
n = input('Give n : ');
h=(b-a)/n; 
sum = 0; 
for i=0:1:n
    x=a+i*h;
    y=f(x); 
    if(i==0 || i==n)
        p=1; 
    else if(rem(i,2) == 0 && rem(i,3)~=0)
            p=1; 
              else if(rem(i,2) = 0 && rem(i,3)=0)
            p=5; 
              else if(rem(i,2) ~= 0 && rem(i,3)==0)
            p=6; 
              else p = 2; 
              end
              end
    end
    end
              sum=sum+p*y; 
    end
    I=sum*3*h/10; 
    fprintf('Answer is %f',I);