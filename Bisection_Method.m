clc
clear all
format long
f=inline('(sin(x)+cos(x)-1)');
a=input('Enter the value of a: ');
b=input('Enter the value of b: ');
i = 0; 
while (abs(a-b)>0.000001)
    c=(a+b)/2; 
    i=i+1;
    if f(a)*f(c) < 0
        b=c;
    else a=c; 
    end
end
fprintf('The answer is %f',c);
fprintf('\nThe number of iteration is %d',i);