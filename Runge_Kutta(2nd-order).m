clc
clear all
format long
xn = input('Enter the value of xn: ');
y0 = input('Enter the value of y0: ');
h = input('Enter the value of h: ');
n = (xn-x0)/h; 
for i = 1:1:n
    k1=h*f(x0,y0);
    k2=h*f(x0+h,y0+k1);
    k=(k1+k2)/2;
    y=y0+k;
    x0=x0+h;
    y0=y;
end
fprintf ('The integral value is %f',y);