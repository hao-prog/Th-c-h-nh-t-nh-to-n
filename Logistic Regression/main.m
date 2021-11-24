A = dlmread('Admission_Predict.csv', ',', 1, 0);
A = A(:, 2:end)';

X = A(1:7, :);
Y = A(8, :);
Y = Y >= 0.75;

X_train = X(:, 1:360);
Y_train = Y(:, 1:360);
X_test = X(:, 361:400);
Y_test = Y(:, 361:400);


w = train(X_train, Y_train);
Y_test
y_pred = predict(X_test, w)
accuracy_score = accuracy(Y_test, y_pred)





