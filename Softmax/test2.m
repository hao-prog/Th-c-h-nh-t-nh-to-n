pkg load image

files = dir(fullfile('Data', '*.png'));
f = {files(:).name};

for i = 1:length(f) 
  I1 = imread(fullfile('Data', f{i}));
  I2 = double(rgb2gray(I1));
  I3 = 255 - imresize(I2,[28 28]);
  I3 = I3 * 0.99 / 255 + 0.01;
  I4 = reshape(I3', 1, 784);
  pred = predict(I4);
  figure; imshow(I3);
  c = cstrcat("Prediction: ", mat2str(pred));
  title(c, "fontsize", 20);
  pause();
end
 