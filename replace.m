function [data_x] = replace(number)

train_lables = loadMNISTLabels('train-labels.idx1-ubyte');

train_images = transpose(loadMNISTImages('train-images.idx3-ubyte'));

test_lables = loadMNISTLabels('t10k-labels.idx1-ubyte');

test_images = transpose(loadMNISTImages('t10k-images.idx3-ubyte'));

data_main = [train_images train_lables;test_images test_lables];

data = data_main(:,:);
data_1 = data;

cx = data_1(:,end) ~= number;

data_1(cx,:) = [];  

data_x = data_1(:,:);

end

