function [w] = train(X, y)
  
  learning_rate = 0.9;
  max_iter = 25;
  tol = 10^-5;
  
  n_samples = size(X, 1);
  
  one = ones(n_samples, 1);
  X = [one X];
  
  y = one_hot_encoding(y);
  
  n_features = size(X, 2);
  n_classes = size(y, 2);
  
  w = rand(n_features, n_classes);

  for k=1:max_iter
    wold = w;
    rp = randperm(n_samples);
    for i = rp
        xi = X(i,:);
        yi = y(i,:);
        yp = softmax(xi*w);
        error = yp - yi;
        
        w = w-((learning_rate^k)*(xi'*error));
    end
    if sumsq(w - wold) <= tol 
      break;
    end
  end  
end