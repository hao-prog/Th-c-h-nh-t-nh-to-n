function [p] = softmax(z)

  mx = max(z')';
  z = z - mx;
  p = bsxfun(@rdivide, exp(z), sum(exp(z)')');

end