f = @(x) 1/(1+x);
n = 100;
a = 0;
b = 2;
h = (b-a)/n;
sum = 0;
for i=1:n-1
   sum = sum + f(a+i*h);
end
T = (h/2)*(f(a) + 2*sum + f(b));
fprintf('result using trapazoidal rule is : %4f\n',T)