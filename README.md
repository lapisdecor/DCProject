DCProject
=========

Repository for my coursera Getting and Cleaning Data course project.

The goal of this project is to prepare tidy data that can be used for later analysis.

This repository contains the raw data, the components of tidy data and the script for the data cleaning and tidy dataset creation:

1. UCI HAR Dataset - The raw data
2. tidysamsung.txt - The resulting tidy data set
3. codebook.md - A code book describing the variables and its values
4. run_analysis.R - The script which transforms the raw data in tidy data.

**NOTE:** The run_analysis.R script has comments on everything it does so **please read them** because only a short description of the process is explained here.  
The script merges the training and the test sets (X, y and subject files on training and test directory) to create one data set. The Inertial Signals directory is not used  by the script because the observations on it were not necessary to the tidy dataset required.
The script extracts only the measurements on the mean and standard deviation for each measurement (observation) and also replaces the values (numeric) of the activities in the data set with descriptive activity values (alphanumeric) taken from the activity_labels.txt file.
The script appropriately labels the data set with descriptive variable names by changing the used labels to lower case, removing parentesis and replacing hyfens for underscores, using more extense names and removing errors in names. Finally from the resulting data set the script creates a second, independent tidy data set with the average of each variable for each activity and each subject which is writen to the file tidysamsung.txt.

A more extensive description of the changes made to the variables names is available in the codebook.md file.

**How to run the script**
To run the script you should:  
1) use a git account, fork the repository and fetch all the files to a directory inside your R working directory  
2) run RStudio  
3) open the run_analysis.R file, select its contents and press Run  
4) issue the run_analysis() command  
   
**If you just want to see the tidy data**
You can download it, then open the tidysamsung.txt in a text editor like gEdit or you read it in R with:     
*t_data <- read.table("./DCProject/tidysamsung.txt", header = T)*   

**About the UCI HAR Dataset**
The UCI HAR Dataset represent data collected from the accelerometers from the Samsung Galaxy S smartphone in a study on wearable computing. A full description of this raw dataset is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The dataset can be also be obtained directly from the source given for this project here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Any commercial use of the raw dataset is prohibited.