clc
clear all
f=@(x) -4*x+cos(x)+2;
x0=0;
x1=0.8;
e=0.0001;
n=10;
%processing
for i=1:n
x2= (x0*f(x1)-x1*f(x0))/ (f(x1)-f(x0));
 if abs(x2-x1)<e
    break;
 else
 x0=x1;
 x1=x2;
end
end

disp(['approxroot is ',num2str(x1),' iteration no : ',num2str(i)])