function loss()
  load('ces.mat', 'ces');
  
  plot(ces);
  xlabel('n Train', "fontsize", 10);
  ylabel('Loss Func', "fontsize", 10)
  
end