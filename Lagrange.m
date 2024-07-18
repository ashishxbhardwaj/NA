x = [0 1 2];
y = [1 0 4];
X = 1.4;
for i = 1:size(x,2)
  x1 = x;
  x1(i) = [];
  l(i) = prod(X-x1)./prod(x(i)-x1);
end
Y = sum(l.*y);
fprintf('value of Y at X = %f is %f \n',X,Y);