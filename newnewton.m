%newnewton.m
%Joseph DePoyster
%COSC/MATH 3340
%10-15-2019

function [values] = newnewton (x0)
f = @(x,y) [((x^3)+(3*(y^2))-21); ((x^2)+(2*y)+2)]; 
J = @(x,y) [ 3*x^2, 6*y; 2*x, 2];
format long;
% Iteration loop
for k = 1:10
  % store values for x and y to be printed later.
  values = f(x0(1), x0(2));
	% Compute the residual at current iterate
  res = -f(x0(1), x0(2));
	% Check convergence; stop if necessary
  if norm (res) < 10^(-5)
    break;
  endif
	% Compute the Jacobian
  Jac = J(x0(1), x0(2));
	% Solve the system for delta (x1 - x0)
  delta = Jac \ res;
	% Update the current iterate
	x0 = x0 + delta;
  disp( [ 'k=',num2str(k,"%03d"),'| ',num2str(values(1),"%+10.6f"),'    | ',num2str(values(2),"%+10.6f"),'    | '])
end
endfunction