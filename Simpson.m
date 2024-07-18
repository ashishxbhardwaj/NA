f = @(x) exp(x^2);
n = 10;
a = 0;
b = 1;
h = (b-a)/n;
oddsum = 0;
for i=1:2:n-1
   oddsum = oddsum + f(a+(i*h))
end
evensum = 0;
for i=2:2:n-2
   evensum = evensum + f(a+(i*h))
end
S = (h/3)*(f(a) + 4*oddsum + 2*evensum + f(b));
fprintf('result using simpson rule is : %4f\n',S)