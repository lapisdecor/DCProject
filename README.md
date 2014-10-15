DCProject
=========

Repository for the Coursera Getting and Cleaning Data project.

The goal of this project is to prepare tidy data that can be used for later analysis.

This repository ontains the raw data, the components of tidy data and the script for the data cleaning and tidy dataset creation:

1. UCI HAR Dataset - The raw data
2. tidysamsung.txt - The resulting tidy data set
3. codebook.md - A code book describing the variables and its values
4. run_analysis.R - The script which transforms the raw data in tidy data. This script merges the training and the test sets (X, y and subject sets) to create one data set. The Inertial Signals directory is not used. Then it extracts only the measurements on the mean and standard deviation for each measurement (observation) and also replaces the values (numeric) of the activities in the data set with descriptive activity values (alphanumeric) taken from the activity labels txt file. Then, the script appropriately labels the data set with descriptive variable names by changing the used labels to lower case, removing parentesis and hyfens and using more extense names. Finally from the resulting data set the script creates a second, independent tidy data set with the average of each variable for each activity and each subject which is writen to the file tidysamsung.txt.

A more extense description of the changes made to the variables is available in the codebook.md file.

The UCI HAR Dataset represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description of this dataset is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data can be obtained directly from the original site with:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Any commercial use of the raw dataset is prohibited.