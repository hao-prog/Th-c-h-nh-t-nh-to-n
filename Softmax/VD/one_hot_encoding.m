function [h] = one_hot_encoding(y)

  h = bsxfun(@eq, 0:9, y);
  
end