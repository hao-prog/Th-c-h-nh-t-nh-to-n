function [y] = one_hot_decoding(h)
  
  [~, argmax] = max(h');
  y = argmax'-1;
  
end