##load mnist_uint8.mat
##X_train=double(train_x);
##y_train=double(train_y);
##X_test=double(test_x);
##y_test=double(test_y);
##
##i = randi([1,10000]);
##xi = X_test(i,:);
##y_pred = one_hot_decoding(predict(xi))
##one_hot_decoding(y_test(i, :))
##displayData(xi');

data = load('mnist.mat');

%10000 x 784
X_test = double(data.testX);

%10000 x 1
y_test = double(data.testY');

##i = randi([1,10000]);
##xi = X_test(i,:);
##
##y_pred = predict(xi)
##y_test(i, :)
##
##img = reshape(xi, 28, 28)';
##image(img);

one_hot_encoding([5 4]')


