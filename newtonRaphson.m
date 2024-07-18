f = @(x) 2^x - 5*x + 2;
df = @(x) log(2)*2^x - 5;

x0 = 0;  
e = 0.0001;  
n = 10;  


if df(x0) ~= 0
    for i = 1:n
        x1 = x0 - f(x0) / df(x0);
        if abs(x1 - x0) < e
            break;
        end
        if df(x1) == 0
            disp('Newton-Raphson failed');
            break;
        end
        x0 = x1;
    end
else
    disp('Newton-Raphson failed (derivative is zero at initial guess)');
end


disp(['Root (approximation): ', num2str(x1)]);
disp(['Number of iterations: ', num2str(i-1)]);  