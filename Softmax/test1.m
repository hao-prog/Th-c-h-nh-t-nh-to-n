pkg load image

data = load('mnist.mat');

%10000 x 784
X_test = double(data.testX);

%10000 x 1
y_test = double(data.testY');

rp = randperm(10000)(1:10);

X_test = X_test * 0.99 / 255 + 0.01;

for i = rp
  xi = X_test(i,:);
  pred = predict(xi);
  actual = y_test(i, :);

  img = reshape(xi, 28, 28)';
  
  #imwrite(img,'out.jpg');
  #colormap('gray');
  imshow(img);
  c = cstrcat("Prediction: ", mat2str(pred), " - Actual: ", mat2str(actual));
  title(c, "fontsize", 20);
  pause();
end





