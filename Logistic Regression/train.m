function [w] = train(X, y)
  max_iter = 100000;
  learning_rate=.005;
  tol = 1e-4;

  N = size(X)(2); # number of samples
  bias = ones(1, N);
  X = [bias; X];
  d = size(X)(1); # dimension
  
  w = randn(d, 1);
  count = 0;
  wc = w;
  
  while (count < max_iter)
    mix_id = randperm(N);
    for i = mix_id
      xi = X(:, i);
      yi = y(i);
      zi = w' * xi;
      p = sigmoid(zi);
      dw = (p - yi)*xi;
      w = w - learning_rate * dw;
      count += 1;
      if (mod(count, 20) == 0)
        if (norm(w - wc) <= tol)
          count = max_iter;
          break
        endif
        wc = w;
      endif
    endfor
  endwhile
end