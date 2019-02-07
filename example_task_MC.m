function task = example_task_MC
%Example of creation of a task for DeepESN.
%The reported code loads the data for the task of Memory Capacity (MC)
%and organizes the correspondint Task object.
%See also the example file example_DeepESN_1.m for usage of Task and DeepESN
%classes in a practical example.
%For further information see the comments reported in the code of this function.
%
%
%This file is part of the DeepESN19a Toolbox, February 2019
% - Octave compatible version
%Claudio Gallicchio
%gallicch@di.unipi.it - https://sites.google.com/site/cgallicch/
%
%Department of Computer Science - University of Pisa (Italy)
%Computational Intelligence & Machine Learning (CIML) Group
%
%Reference article:
%C. Gallicchio, A. Micheli, L. Pedrelli, "Deep Reservoir Computing: A
%Critical Experimental Analysis", Neurocomputing, 2017, vol. 268, pp. 87-99

task = Task(); %initialize the task
task.set_name('MC100'); %set the name
input_data = csvread('MC_input.csv'); %read the input data
target_data = csvread('MC_target.csv'); %read the taregt data (i.e. the delayed versions of the input in this case)
task.set_data(input_data,target_data); %set the input and target data for the task
task.set_holdout_folds(1:4000, 4001:5000, 1:5000, 5001:6000); %set the indices for training/validation/design/test
                                                              %for hold-out cross validation