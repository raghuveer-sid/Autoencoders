% Machine learning Lab 5a
clear
clc

% splitting data into different classes

[data_0] = replace(0);
[data_1] = replace(1);
[data_2] = replace(2);
[data_3] = replace(3);
[data_4] = replace(4);
[data_5] = replace(5);
[data_6] = replace(6);
[data_7] = replace(7);
[data_8] = replace(8);
[data_9] = replace(9);

%  Training set and shuffling them .
% Change the data numbers of classes you want to use as traing set
% NOTE : Using data_0 with any other data class, plotcl function could not plot properly.
data_y =[data_6;data_9]; % training set
data_x = data_y(randperm (size (data_y, 1)), :);  % shuffling the set

% As told in lecture nh = 2
nh = 2;

% Training
myAutoencoder = trainAutoencoder(data_x',nh);

% Encoding
myEncodedData = encode(myAutoencoder,data_x');

% Plot with plocl
plotcl(myEncodedData',data_x(:,end))