clc
clear all
f=@(x) -4*x+cos(x)+2;
a=0.5;
b=0.75;
n=100;
tol=0.00001;

if f(a)*f(b)<0
    for i=1:n
        c=(a+b)/2;
        if f(a)*f(c)<0
            b=c;
        elseif f(b)*f(c)<0
            a=c;
        end
         if abs(b - a) < tol
           break;
         end
    end 
else
    disp('root not found in given brackets')
end
disp(['approx root after ', num2str(i),' iterations is : ',num2str(c)])