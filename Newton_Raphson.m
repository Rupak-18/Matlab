clc
clear all
format long
f=inline('(3*x-cos(x)-1)');
g=inline('3+sin(x)');
x0=input('Enter the value of x0: ')
x1=x0-(f(x0)/g(x0));
i=1;
while (abs(x1-x0)>0.000001)
    x0=x1;
    x1=x0-(f(x0)/g(x0));
    i=i+1;
end
fprintf('The answer is %f',x1);
fprintf('\nThe number of iteration is %d',i);