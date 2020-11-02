load("ex5data1.mat");
m = size(X,1);
X = [ones(m,1) X]
theta = zeros(1, 2);
error_train = zeros(1, m);
for i = 1:m
theta(1, :) = trainLinearReg(X, y, 0);
h = (X(1:i, :)*theta')
error_train(i) = (h-y).^2;
end
