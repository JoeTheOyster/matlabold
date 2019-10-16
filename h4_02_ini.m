%h4_02_ini.m
%Joseph DePoyster
%COSC/MATH 3340
%10-15-2019

%Implement Newton's method for 2x2 system
clear all;
format long;
%Initial guesses given to function
x0 = [1,-2];

####### DISPLAY HEADER ####### 
disp( [ '____________________________________'])%top line
disp( [ 'iter |  x           |  y           |'])%label
disp( [ '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'])%bottom line
disp( [ 'init | ',num2str(x0(1), "%+10.6f"),'    | ',num2str(x0(2),"%+10.6f"),'    | '])

values = newnewton(x0);

