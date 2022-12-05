load fisheriris.mat 
% Loading DataSet
species = grp2idx(species);
% Converting Species table to indexes
idx1 = randperm(150,90)'; 
% Random Permutation of Index 1 90 out of 150
idx2 = setdiff((1:150)',idx1);
% 150 - Index 1 = 60; Index 2 =  Rest of 60 Data
traindata = meas(idx1,:);
% Measurments of Index 1 is equal to traindata
traintarget = species(idx1,:);
% Species of Index 1 is equal to traintarget
testdata = meas(idx2,:);
% Measurments of Index 2 is equal to testdata
testtarget = species(idx2,:);
% Species of Index 2 is equal to testtarget
for j=[5,10,15,20] 
    % Starting Loop and Defined the Hidden Layers
    net=feedforwardnet(j);
    % Defining the Hidden layers to feedforwardnet function
    Correctness_Array = [];
    for i=1:10
        % Starting inner loop to Repeat 10 times
        net = train(net,traindata.',traintarget.');
        % View of Feedforward Neural Network
        Output = net(testdata.');
        % Giving testdata' to net function and taking it as output
        Correctness = (sum(round(Output)==testtarget(:,end).')*(100/size(testtarget,1)));
        % Correctness of the system
        Correctness_Array (end+1) = Correctness;
        % Giving the correctness of each to an Array
    end
    Average_Correctness = mean (Correctness_Array);
    % Taking the mean of Correctness_Array as a Average
    view(net)
end