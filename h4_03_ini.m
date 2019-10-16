%h4_03_ini.m
%Joseph DePoyster
%COSC/MATH 3340
%10-15-2019

clear all;
close all;
% Here we'll do a straight-line fit
% Input the data set
x = [ 0.0, 0.1, 0.2, 0.3, 0.4, 0.5];
y = [ 1.634, 1.637, 1.911, 2.633, 3.221, 3.977];
n = length(x);

% Create the system matrix; you have at least two ways to go
% Easiest is to take advantage of MATLAB pointwise operations
x2 = x .* x;
xy = x .* y;
M(1,1) = sum(x2);
M(1,2) = sum(x);
M(2,1) = M(1,2);
M(2,2) = n;

% Create the RHS; again a couple ways to go
r = [sum(xy); sum(y)]

%Solve the system to get the slope and intercept
% Call these A & B, respectively
sol = M\r
 A = sol(1)
 B = sol(2)

% Now plot the data points against the straight line
xLine = [ x(1) x(end)];
yLine = A*xLine + B;
plot( x, y, '*', xLine, yLine )
#this is where we left off in class. we can 
#plot the quadratic much in the way that we were able to plot this 
#straight line.
%also, there is some sample code that is a lot like this...