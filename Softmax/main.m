
data = load('mnist.mat');

%60000 x 784
X_train = double(data.trainX);

%60000 x 1
y_train = double(data.trainY');

%10000 x 784
X_test = double(data.testX);

%10000 x 1
y_test = double(data.testY');

X_train = X_train * 0.99 / 255 + 0.01;
X_test = X_test * 0.99 / 255 + 0.01;

#train(X_train, y_train);

y_pred1 = predict(X_train);
acc_train = accuracy(y_train, y_pred1)

y_pred2 = predict(X_test);
acc_test = accuracy(y_test, y_pred2)