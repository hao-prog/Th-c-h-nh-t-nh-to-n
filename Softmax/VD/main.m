
data = load('mnist.mat');

%60000 x 784
X_train = double(data.trainX);

%60000 x 1
y_train = double(data.trainY');

%10000 x 784
X_test = double(data.testX);

%10000 x 1
y_test = double(data.testY');


w = train(X_train, y_train);

save('weights.mat', 'w');

y_pred = predict(X_test);

accuracy(y_test, y_pred)