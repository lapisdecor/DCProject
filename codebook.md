The codebook for the Getting and Cleaning Data project
======================================================

This codebook describes the variables, units, summary choices and study design used in this project.

1. Variables
============
This tidy dataset contains the following variables:

subject  
activity  
time_bodyacc_mean_x  
time_bodyacc_mean_y  
time_bodyacc_mean_z  
time_bodyacc_std_x  
time_bodyacc_std_y  
time_bodyacc_std_z  
time_gravityacc_mean_x  
time_gravityacc_mean_y  
time_gravityacc_mean_z  
time_gravityacc_std_x  
time_gravityacc_std_y  
time_gravityacc_std_z  
time_bodyaccjerk_mean_x  
time_bodyaccjerk_mean_y  
time_bodyaccjerk_mean_z  
time_bodyaccjerk_std_x  
time_bodyaccjerk_std_y  
time_bodyaccjerk_std_z  
time_bodygyro_mean_x  
time_bodygyro_mean_y  
time_bodygyro_mean_z  
time_bodygyro_std_x  
time_bodygyro_std_y  
time_bodygyro_std_z  
time_bodygyrojerk_mean_x  
time_bodygyrojerk_mean_y  
time_bodygyrojerk_mean_z  
time_bodygyrojerk_std_x  
time_bodygyrojerk_std_y  
time_bodygyrojerk_std_z  
time_bodyaccmag_mean  
time_bodyaccmag_std  
time_gravityaccmag_mean  
time_gravityaccmag_std  
time_bodyaccjerkmag_mean  
time_bodyaccjerkmag_std  
time_bodygyromag_mean  
time_bodygyromag_std  
time_bodygyrojerkmag_mean  
time_bodygyrojerkmag_std  
fastfourier_bodyacc_mean_x  
fastfourier_bodyacc_mean_y  
fastfourier_bodyacc_mean_z  
fastfourier_bodyacc_std_x  
fastfourier_bodyacc_std_y  
fastfourier_bodyacc_std_z  
fastfourier_bodyacc_meanfreq_x  
fastfourier_bodyacc_meanfreq_y  
fastfourier_bodyacc_meanfreq_z  
fastfourier_bodyaccjerk_mean_x  
fastfourier_bodyaccjerk_mean_y  
fastfourier_bodyaccjerk_mean_z  
fastfourier_bodyaccjerk_std_x  
fastfourier_bodyaccjerk_std_y  
fastfourier_bodyaccjerk_std_z  
fastfourier_bodyaccjerk_meanfreq_x  
fastfourier_bodyaccjerk_meanfreq_y  
fastfourier_bodyaccjerk_meanfreq_z  
fastfourier_bodygyro_mean_x  
fastfourier_bodygyro_mean_y  
fastfourier_bodygyro_mean_z  
fastfourier_bodygyro_std_x  
fastfourier_bodygyro_std_y  
fastfourier_bodygyro_std_z  
fastfourier_bodygyro_meanfreq_x  
fastfourier_bodygyro_meanfreq_y  
fastfourier_bodygyro_meanfreq_z  
fastfourier_bodyaccmag_mean  
fastfourier_bodyaccmag_std  
fastfourier_bodyaccmag_meanfreq  
fastfourier_bodyaccjerkmag_mean  
fastfourier_bodyaccjerkmag_std  
fastfourier_bodyaccjerkmag_meanfreq  
fastfourier_bodygyromag_mean  
fastfourier_bodygyromag_std  
fastfourier_bodygyromag_meanfreq  
fastfourier_bodygyrojerkmag_mean  
fastfourier_bodygyrojerkmag_std  
fastfourier_bodygyrojerkmag_meanfreq  

Other then the subject and activity variable names, wich were added, variable names were modified from the original names which can be found in the features.txt file in the UCI HAR directory.

The names were modified to produce a more clear way to identify the variables by changing the used labels to lower case, removing parentesis and hyfens and using more extense names, specially in the case of the first character where "t"" was replaced for "time", and "f" was replaced for "fastfourier".

The reference to "BodyBody" on the original variable names was probably an error because has no evident particular meaning and was replaced simply for "body".

**Partial designations used in forming names on the variables and their meaning:**

time - a reference to time domain signals;  
fastfourier - a reference to Fast Fourier Transform (FFT) frequency domain signals;  
jerk - refers to Jerk signals;  
acc - refers to acceleration;  
gravity - refers to gravity;  
gyro - refers to gyroscope signals;  
body - refers to body (gravity/acceleration);   
mag - refers to magnitude;  
freq - refers to frequency;  
mean - refers to mean;  
std - refers to standard deviation;  
x, y, z - refers to the 3-axial signals in the X, Y and Z directions.  

As an example, **time_bodyaccjerkmag_std** variable name represents the process used to estimate the values it holds:  **time** domain signals were captured, then filtered to remove noise. The **body** linear **acceleration** (acc) was derived in time to obtain **jerk** signals and the **magnitude** (mag) of this signals was calculated. Finally the **standard deviation** (std) was estimated. This value is now a mean grouped by subject and activity. 

A detailed description of this name formation process for each of the 81 variable names is not made here because it would be too extent and because the prior example ilustrates how to do it. If you need more explanation on the process behind some variable names, please take a look at the description of the original variables collected on the experiment which can be found in the features_info.txt file on the UCI HAR Dataset directory.

This tidy dataset **does not contain** the variables which **do not refer to mean and standard deviation** present on that directory.

The values on the tidy dataset are the **average values** of variables referent to **mean** and **standard deviation** grouped by **subject** and **activity**.

2. Units of the variables
=========================
Since the tidy dataset is mostly a collection of means and standard deviations, the values are normalized, except for the values of subject and activity.

The variable **subject** varies from 1 to 30 and is an identifier of the subject who carried out the experiment.

The variable **activities** has 6 values which correspond to the subject performed activities on the experiment:

WALKING  
WALKING_UPSTAIRS  
WALKING_DOWNSTAIRS  
SITTING  
STANDING  
LAYING  

The variables names that have **meanfreq** at the end of their name refer originally to weighted average of the frequency components to obtain a mean frequency. Their value on the tidy dataset is the mean of this value grouped by subject and activity. 

3. Summary Choices
==================

The tidy dataset results mainly from merging the X_train.txt and X_test.txt files with the subject_train.txt, subject_test.txt, y_train.txt and y_test.txt  and only contains a subset of the original data.   The inertial signals folder and data **was not used** and that data is not part of the final tidy data set.   Activities are originally numbers and were tranformed into descriptive alphanumeric values described in 2.   Remaining variables in the tidy dataset are extracted only from the measurements on the mean and standard deviation for each measurement.   The final dataset has the average of each variable for each activity and each subject.

4. Study Design
===============

The data used in this tidy dataset was referenced in the coursera **"Getting and Cleaning Data"** course provided by Johns Hopkins Bloomberg School of Public Health and coursera. You can take the course or access it at

https://www.coursera.org/course/getdata

The data is **"Human Activity Recognition Using Smartphones Data Set"**, a human activity recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The data was donated to UCI on 2012-12-10 and its source is Smartlab - Non Linear Complex Systems Laboratory, one of the Research Laboratories at the DITEN Department of the University of Genova, Italy.

Please read the README.txt file on the UCI HAR Dataset directory for more information about the raw dataset. You should also check the README.md file of this repository which has links for the original dataset and for the description of the data and experiment.

The raw data was downloaded and commited to this repository on September 21, 2014.
