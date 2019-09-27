## Author:  joseph depoyster
## Created: 2019-09-26
## code for cosc 3340, hw2
% bisectionF finds the bisection of some function.

function [r, iters] = bisectionF (fneg, fpos, xL, xR)
  for i = 1:25
  xm = (xL+xR)/2;
  if xm <= 0
    f = fneg;
  else
    f = fpos;
  end
  
    if (f(xm) * f(xR)) < 0;
     xL = xm;
    else
     xR = xm;
    end
  end
  r = xm;
  iters = i;
endfunction