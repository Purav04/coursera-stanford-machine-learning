function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.

for iter = 1:num_iters    
     x = X(:,2);
     h = theta(1) + (theta(2)*x);
     thetaone = theta(1) - alpha * (1/m) * sum(h-y);
     thetatwo  = theta(2) - alpha * (1/m) * sum((h - y) .* x);
     theta = [thetaone; thetatwo];
     J_history(iter) = computeCost(X, y, theta);
    % ============================================================
    % Save the cost J in every iteration    
end;
max(J_history);
end
