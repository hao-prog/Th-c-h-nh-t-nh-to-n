function [a] = accuracy(y_true, y_pred)
  
  match = (y_true == y_pred);
  a = mean(match)*100;
  
end