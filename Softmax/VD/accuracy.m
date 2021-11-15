function [a] = accuracy(y, p)
  
  match = (y == p);
  a = mean(match)*100;
  
end