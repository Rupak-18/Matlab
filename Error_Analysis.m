clc
clear all
format long
k=input('Enter the value of k '); 
va=0; 
for i = 1:1:k
    va = va + 4*(-1)^(i-1)/(2*i-1);
end
vt = 4*atan(1); 
ea = abs(vt-va);
er= ea/vt;
ep = er*100;
fprintf('%f',vt); 
fprintf('%f',va); 
fprintf('%f',ea); 
fprintf('%f',er); 
fprintf('%f',ep);