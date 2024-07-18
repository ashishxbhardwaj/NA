clc 
clear all
x0=[1;-1;2];
a=[2 1 1;1 2 1;1 1 2];
tol=10^-3;
n=1000;
y=a*x0;
m1=max(abs(y));
i=0;
while i<n
    x=(1/m1).*y;
    y=a*x
    m2=max(abs(y));
    if abs(m2-m1)<tol
        break;
    end 
    m1=m2;
    i=i+1;
end
x
m1
disp(['max eigen val: ', num2str(m1),' ', num2str(i) ])

