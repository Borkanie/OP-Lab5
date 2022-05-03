function [val] = fun(s_fun,x1_fun,x2_fun,oldStep)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
val=(x1_fun+s_fun*oldStep)^3+6*(x1_fun+s_fun*oldStep)^4-3*(x2_fun+s_fun*oldStep)^2+2*(x2_fun+s_fun*oldStep)^6;
end