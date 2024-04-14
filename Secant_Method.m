clc
clear all
format long
f=inline('(sin(x)+cos(x)-1)');
x0=input('Enter the value of x0: ');
x1=input('Enter the value of x1: ');
x2=x1-(f(x1)*(x1-x0))/(f(x1)-f(x0));
i=1;
while (abs(x2-x1)>0.000001)
    x0=x1;
    x1=x2; 
    x2=x1-(f(x1)*(x1-x0))/(f(x1)-f(x0));
    i=i+1;
end
fprintf('The answer is %f',x2);
fprintf('\nThe number of iteration is %d',i);