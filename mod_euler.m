clc
clear all
a=1;
b=1.4;
h=0.1;
f=@(t,y) t*y;
t=a;
y=zeros(size(t));
y(1)=5;
n=(b-a)/h;
for i=1:n
  t(i+1)=t(i)+h;
  k1=h*f(t(i),y(i));
  k2=h*f(t(i)+h,y(i)+k1);
  y(i+1)=y(i)+(1/2)*(k1+k2);
end
y