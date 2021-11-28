function [ce] = cross_entropy(y, p)
  n_samples = size(y, 1);
  ce = -sum(sum((y.*log(p))')) / n_samples
end