function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
if (size(x,2)~= size(y,2));
    error('inputs are not equal lenghth.')
end
h = x(2) - x(1);
    for i=3:x;
        if (x(i)-x(i-1))~= h
            error('x data is not equally spaced');
        end
    end

prevI = 0;
if mod(X2) == 0;
warning('Trapezoidal rule is used for last interval');

prevI = trapz([x(end-1),x(end)],[y(end-1),y(end)]);
x(end)= 0;
y(end-1), y(end);
end
I = (h/3)*(y(1)+(2*(sum(y(3:2:end-1))))+(4*sum(y(2:2:end-2)))+y(end));
I= prevI + I;
disp(I)
end
% Outputs:
%   I = the numerical integral calculated