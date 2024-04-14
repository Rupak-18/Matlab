clc
clear all
format long
f = inline('(x*y+1)/(10*y*y+4'); 
x0 = input('Enter the value of x0: ');
xn = input('Enter the value of xn: ');
y0 = input('Enter the value of y0: ');
h = input('Enter the value of h: ');
n = (xn-x0)/h; 
for i = x0:h:xn
    k1=hf(x0,y0);
    k2=hf(x0+h/2,y0+k1/2);
    k3=hf(x0+h/2,y0+k2/2);
    k4=hf(x0+h,y0+k3);
    k=(k1+2*k2+2*k3+k4)/6;
    y1=y0+k;
end
fprintf ('The integral value is %f',y1);