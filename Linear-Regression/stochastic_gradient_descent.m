% 随机梯度下降算法

clear all; close all; clc
x = load('ex2x.dat'); y = load('ex2y.dat');

m = length(y); % number of training examples
m
% Gradient descent
x = [ones(m, 1) x]; % Add a column of ones to x
theta = zeros(size(x(1,:)))'; % initialize fitting parameters

alpha = 0.07;
num_iterations = 0;

for i = 1:m

    grad = (1/m).* x(i,:)' * ((x(i,:) * theta) - y(i));
    
    if max(abs(grad)) < 0.000001 % converge, precision
      break
    end
    
    % Here is the actual update
    theta = theta - alpha .* grad;

    num_iterations = num_iterations + 1;
end
% print theta to screen
theta
num_iterations % 1534 =~ 1500