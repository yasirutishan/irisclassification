# irisclassification
This document contains all the necessary information pertaining to the assessment of PUSL3123 AI and Machine Learning.

Write MATLAB code for classifying Fisher's Iris Data using neural network.
Data Set Information:
The Iris data set is widely used as a beginner's dataset for machine learning purposes. The data set contains 3 classes of 50 instances each, where each class refers to a type of Iris plant (i.e., a total of 150 records under five attributes - sepal length, sepal width, petal length, petal width and species). See Figure 1, this is an example of the Iris Flower Data Set just for illustration. More information about this dataset can be found https://archive.ics.uci.edu/ml/datasets/iris
Predicted attribute: class of iris plant.

Task 2.1 – Data Preparation
1- To get data for your supervised classifiers, load the MATLAB file named fisheriris.mat.
2- Shuffle the dataset randomly by selecting 60% for training and remaining 40% for testing. Once data is randomly selected, create training data, training target, testing data and testing target.

Task 2.2 – Neural Network Setup
1- Select Feedforward Recognition Neural Networks (feedforwardnet)
2- Define the number of neurons of the neural network using iteration (assume 5, 10, 15, and 20 hidden layers) and for each neural network setting (i.e., for each hidden layer) repeat the experiment 10 times.
3- Train the neural network based on the training dataset created and view the trained net (similar as Figure 2, input and output numbers are just for illustration).
4- Test the trained net using testing dataset and evaluate its performance (e.g. classifier accuracy). You may run several times for training and testing to get an average performance value (i.e., average percentage of correct classifications). Why does each run have different results?

The first thing is to load the fisheriris.mat data set to the MATLAB. Converting the string in species table should converted into indexes. Randomly select 60% of the dataset for training and the remaining 40% for testing. Here the randperm function is used as Random Permutation. We have given two values for the randperm (150,90). The remaining 40% allocated to idx2 as setdiff function.
After the data has been chosen at random, make training data, training targets, testing data, and testing targets.
• traindata is selected form the measurements table
• traintarget is selected form the species table
• testdata is selected form the measurements table
• testtarget is selected form the species table

Here the for loop is started to initialize the system. The number of neurons of the neural network are assume as [5,10,15,20] and there are hidden layers. Therefore initialize “j” is the feedforwardnet.
Now the inner loop is started in the feedforwardnet and its repeating 10 times as of each hidden layer.
To view the feedforward neural network diagram here it is shown is view(net).
For the net function we give the test data transpose and taking this as the output.
The out is taken as a round off number and validate with test target.
The correctness is taken to and array. Form that the average percentage is taken.

