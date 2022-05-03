function [grad] = gradientf(x1,x2)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
grad=[21*x1.^3+3*x1.^2;
    12*x2.^5-6*x2];
end