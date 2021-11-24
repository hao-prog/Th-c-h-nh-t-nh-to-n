function [p] = predict(X, w)
  coa = 0.75;
  bias2 = ones(1, size(X)(2));
  X = [bias2; X];
  z = w' * X;
  p = sigmoid(z);
  p = p > coa;
end