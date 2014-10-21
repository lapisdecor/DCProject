The codebook for the Getting and Cleaning Data project
======================================================

This codebook describes the variables, units, summary choices and study design used in this project.

1. Variables
============
This tidy dataset contains the following variables:

subject  
activity  
time_bodyacceleration_mean_x  
time_bodyacceleration_mean_y  
time_bodyacceleration_mean_z  
time_bodyacceleration_std_x  
time_bodyacceleration_std_y  
time_bodyacceleration_std_z  
time_gravityacceleration_mean_x  
time_gravityacceleration_mean_y  
time_gravityacceleration_mean_z  
time_gravityacceleration_std_x  
time_gravityacceleration_std_y  
time_gravityacceleration_std_z  
time_bodyaccelerationjerk_mean_x  
time_bodyaccelerationjerk_mean_y  
time_bodyaccelerationjerk_mean_z  
time_bodyaccelerationjerk_std_x  
time_bodyaccelerationjerk_std_y  
time_bodyaccelerationjerk_std_z  
time_bodygyroscope_mean_x  
time_bodygyroscope_mean_y  
time_bodygyroscope_mean_z  
time_bodygyroscope_std_x  
time_bodygyroscope_std_y  
time_bodygyroscope_std_z  
time_bodygyroscopejerk_mean_x  
time_bodygyroscopejerk_mean_y  
time_bodygyroscopejerk_mean_z  
time_bodygyroscopejerk_std_x  
time_bodygyroscopejerk_std_y  
time_bodygyroscopejerk_std_z  
time_bodyaccelerationmagnitude_mean  
time_bodyaccelerationmagnitude_std  
time_gravityaccelerationmagnitude_mean  
time_gravityaccelerationmagnitude_std  
time_bodyaccelerationjerkmagnitude_mean  
time_bodyaccelerationjerkmagnitude_std  
time_bodygyroscopemagnitude_mean  
time_bodygyroscopemagnitude_std  
time_bodygyroscopejerkmagnitude_mean  
time_bodygyroscopejerkmagnitude_std  
fastfourier_bodyacceleration_mean_x  
fastfourier_bodyacceleration_mean_y  
fastfourier_bodyacceleration_mean_z  
fastfourier_bodyacceleration_std_x  
fastfourier_bodyacceleration_std_y  
fastfourier_bodyacceleration_std_z  
fastfourier_bodyacceleration_meanfreq_x  
fastfourier_bodyacceleration_meanfreq_y  
fastfourier_bodyacceleration_meanfreq_z  
fastfourier_bodyaccelerationjerk_mean_x  
fastfourier_bodyaccelerationjerk_mean_y  
fastfourier_bodyaccelerationjerk_mean_z  
fastfourier_bodyaccelerationjerk_std_x  
fastfourier_bodyaccelerationjerk_std_y  
fastfourier_bodyaccelerationjerk_std_z  
fastfourier_bodyaccelerationjerk_meanfreq_x  
fastfourier_bodyaccelerationjerk_meanfreq_y  
fastfourier_bodyaccelerationjerk_meanfreq_z  
fastfourier_bodygyroscope_mean_x  
fastfourier_bodygyroscope_mean_y  
fastfourier_bodygyroscope_mean_z  
fastfourier_bodygyroscope_std_x  
fastfourier_bodygyroscope_std_y  
fastfourier_bodygyroscope_std_z  
fastfourier_bodygyroscope_meanfreq_x  
fastfourier_bodygyroscope_meanfreq_y  
fastfourier_bodygyroscope_meanfreq_z  
fastfourier_bodyaccelerationmagnitude_mean  
fastfourier_bodyaccelerationmagnitude_std  
fastfourier_bodyaccelerationmagnitude_meanfreq  
fastfourier_bodyaccelerationjerkmagnitude_mean  
fastfourier_bodyaccelerationjerkmagnitude_std  
fastfourier_bodyaccelerationjerkmagnitude_meanfreq  
fastfourier_bodygyroscopemagnitude_mean  
fastfourier_bodygyroscopemagnitude_std  
fastfourier_bodygyroscopemagnitude_meanfreq  
fastfourier_bodygyroscopejerkmagnitude_mean  
fastfourier_bodygyroscopejerkmagnitude_std  
fastfourier_bodygyroscopejerkmagnitude_meanfreq


Other then the subject and activity variable names, wich were added, variable names were modified from the original names which can be found in the features.txt file in the UCI HAR directory.

The names were modified to produce a more clear way to identify the variables by changing the used labels to lower case, removing parentesis and replacing hyfens for underscores, and using more extense names, specially in the case of the first character where "t"" was replaced for "time", and "f" was replaced for "fastfourier". **The "std" and "freq" in names were kept since thet are widelly used to designate standard deviation and frequency, and because they makes variable names more readable**. One can argue that underscores shouldn't be used but in this case they make variables more human readable. It was not used between all designations because it would make the already extended designations in variable names even bigger, and therefore less readable. Camel case was removed and is deliberatelly not used. 

The reference to "BodyBody" on the original variable names was probably an error because has no evident particular meaning and was replaced simply for "body".

**Partial designations and other used in forming names on the variables, and their meaning:**

time - a reference to time domain signals;  
fastfourier - a reference to Fast Fourier Transform (FFT) frequency domain signals;  
jerk - refers to Jerk signals;  
acceleration - refers acceleration;  
gravity - refers to gravity;  
gyroscope - refers to gyroscope signals;  
body - refers to body (gravity/acceleration);   
magnitude - refers to magnitude;  
freq - refers to frequency;  
mean - refers to mean;  
std - refers to standard deviation;  
x, y, z - refers to the 3-axial signals in the X, Y and Z directions.  

As an example, **time_bodyaccelerationjerkmagnitude_std** variable name represents the process used to estimate the values it holds:  **time** domain signals were captured, then filtered to remove noise. The **body** linear **acceleration** was derived in time to obtain **jerk** signals and the **magnitude** of this signals was calculated. Finally the **standard deviation** (std) was estimated. This value is now on the tidy data the average for each subject and each activity. 

A detailed description of each name formation process for each of the variable names is not made here because it would be too extent and because the prior example ilustrates how to do it. If you need more explanation on the process behind some variable names, please take a look at the description of the original variables collected on the experiment which can be found in the features_info.txt file on the UCI HAR Dataset directory.

This tidy dataset **does not contain** the variables which **do not refer to mean and standard deviation** present on the UCI HAR Dataset directory.

The values on the tidy dataset are the **average values** of the variables referent to **mean and standard deviation grouped by each subject and each activity**.

2. Units of the variables
=========================
Since the tidy dataset is mostly a collection of means and standard deviations, the values are normalized, except for the values of subject and activity.

The variable **subject** varies from 1 to 30 and is an identifier of the subject who carried out the experiment.

The variable **activities** is a factor with 6 levels which correspond to the subject performed activities on the experiment:

WALKING  
WALKING_UPSTAIRS  
WALKING_DOWNSTAIRS  
SITTING  
STANDING  
LAYING  

The variables names that have **meanfreq** at the end of their name refer originally to weighted average of the frequency components to obtain a mean frequency. Their value on the tidy dataset is the mean of this value grouped for each subject and activity. 

3. Summary Choices
==================

The tidy dataset results mainly from merging the X_train.txt and X_test.txt files with the subject_train.txt, subject_test.txt, y_train.txt and y_test.txt  and only contains a subset of the original data.   The inertial signals folder and data **was not used** and that data is not part of the final tidy data set.   Activities are originally numbers and were tranformed into descriptive alphanumeric values described in 2.   Remaining variables in the tidy dataset are extracted only from the measurements on the mean and standard deviation for each observation.   The final dataset has the average of each variable for each activity and each subject that was calculated by using dplyr package functions. The data was first grouped by subject and activity using *group_by()* and then a *select()* was used to reorganize the order of the columns, then the *summarise_each()* function was used to calculate the grouped means.

4. Study Design
===============

The original data used in this tidy dataset was referenced in the coursera **"Getting and Cleaning Data"** course provided by Johns Hopkins Bloomberg School of Public Health and coursera. You can take the course or access it at

https://www.coursera.org/course/getdata

The data is **"Human Activity Recognition Using Smartphones Data Set"**, a human activity recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The data was donated to UCI on 2012-12-10 and its source is Smartlab - Non Linear Complex Systems Laboratory, one of the Research Laboratories at the DITEN Department of the University of Genova, Italy.

Please read the README.txt file on the UCI HAR Dataset directory for more information about the raw dataset. You should also check the README.md file of this repository which has links for the original dataset and for the description of the data and experiment.

The raw data was downloaded and commited to this repository on September 21, 2014.
