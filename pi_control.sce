clear;
clc;
m=1000;
b=50;
r=90; 
n=1;
x1(1)=50    
integr(1)=0;
Kp= 5000;
e(1)= r-x1(1);
u=0;
Ki=50;
int_e(1)= 0
for t=0:0.01:101
    n=n+1;
    x2(n)= (u/m)-(b/m)*x1(n-1);    
    integr(n)= integr(n-1)+ ((x2(n)+ x2(n-1))*0.01)/2;  
    x1(n)= integr(n);
        e(n)= r-x1(n);
    int_e(n)= int_e(n-1)+((e(n)+e(n-1))*0.01)/2; 
    u= Kp*e(n-1) + Ki*int_e(n); 
end
plot(x1)     
