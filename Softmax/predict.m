function [p] = predict(X)
  load('w.mat', 'w');
  
  n_samples = size(X, 1);
  
  one = ones(n_samples, 1);
  X = [one X];
   
  p = softmax(X * w);
  p = one_hot_decoding(p);

end