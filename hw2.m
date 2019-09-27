%joseph depoyster
%09/26/2019
% MATH 3340 hw2

##script that was written up for problem 1
clear all
xl = -2;
xr = 0.1;
fneg = @(x) (x^3) + (3*x) +1;
fpos = @(x) 1 + sin(x);

[root, iterations] = bisectionF(fneg, fpos, xl, xr);

disp("The value for the root is: ") 
root
disp("The value for f(X) is: ")
if root <= 0;
  fneg(root)
else
  fpos(root)
end
disp("Number of iterations performed: ")
iterations

##end script that was written for problem 1

##begin script that was written for problem 2
clear all
x0 = -2
alpha = 10e-5
f = @(x) (x^3) + (3 * x) + 1
fp = @(x) (3 * (x ^2)) + 3
newtonsM(f, fp, x0, alpha)
