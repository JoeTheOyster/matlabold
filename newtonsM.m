## Author:  joseph depoyster
## Created: 2019-09-26
## code for cosc 3340, hw2
% newtonsM finds the root of some function.

function [r, iters] = newtonsM (f, fp, x0, alpha)
  for n = 0:25
      f0 = f(x0);
     fp0 = fp(x0);
      if abs( fp0 ) < eps 
        disp('Error')
      break
      end
     x1 = x0 - f0 / fp0;
     if abs(f0) < alpha
         break;
     end
     x0 = x1;
   end
endfunction