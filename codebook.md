The codebook for the Getting and Cleaning Data project
======================================================

This codebook describes the variables, units, summary choices and study design used in this project. The original experiment data was taken from Human Activity Recognition Using Smartphones Data Set. 

1. Variables
============
This tidy dataset contains the following variables:

subject  
activity  
time_body_acceleration_mean_x  
time_body_acceleration_mean_y  
time_body_acceleration_mean_z  
time_body_acceleration_std_x  
time_body_acceleration_std_y  
time_body_acceleration_std_z  
time_gravity_acceleration_mean_x  
time_gravity_acceleration_mean_y  
time_gravity_acceleration_mean_z  
time_gravity_acceleration_std_x  
time_gravity_acceleration_std_y  
time_gravity_acceleration_std_z  
time_body_acceleration_jerk_mean_x  
time_body_acceleration_jerk_mean_y  
time_body_acceleration_jerk_mean_z  
time_body_acceleration_jerk_std_x  
time_body_acceleration_jerk_std_y  
time_body_acceleration_jerk_std_z  
time_body_gyroscope_mean_x  
time_body_gyroscope_mean_y  
time_body_gyroscope_mean_z  
time_body_gyroscope_std_x  
time_body_gyroscope_std_y  
time_body_gyroscope_std_z  
time_body_gyroscope_jerk_mean_x  
time_body_gyroscope_jerk_mean_y  
time_body_gyroscope_jerk_mean_z  
time_body_gyroscope_jerk_std_x  
time_body_gyroscope_jerk_std_y  
time_body_gyroscope_jerk_std_z  
time_body_acceleration_magnitude_mean  
time_body_acceleration_magnitude_std  
time_gravity_acceleration_magnitude_mean  
time_gravity_acceleration_magnitude_std  
time_body_acceleration_jerk_magnitude_mean  
time_body_acceleration_jerk_magnitude_std  
time_body_gyroscope_magnitude_mean  
time_body_gyroscope_magnitude_std  
time_body_gyroscope_jerk_magnitude_mean  
time_body_gyroscope_jerk_magnitude_std  
fastfourier_body_acceleration_mean_x  
fastfourier_body_acceleration_mean_y  
fastfourier_body_acceleration_mean_z  
fastfourier_body_acceleration_std_x  
fastfourier_body_acceleration_std_y  
fastfourier_body_acceleration_std_z  
fastfourier_body_acceleration_meanfreq_x  
fastfourier_body_acceleration_meanfreq_y  
fastfourier_body_acceleration_meanfreq_z  
fastfourier_body_acceleration_jerk_mean_x  
fastfourier_body_acceleration_jerk_mean_y  
fastfourier_body_acceleration_jerk_mean_z  
fastfourier_body_acceleration_jerk_std_x  
fastfourier_body_acceleration_jerk_std_y  
fastfourier_body_acceleration_jerk_std_z  
fastfourier_body_acceleration_jerk_meanfreq_x  
fastfourier_body_acceleration_jerk_meanfreq_y  
fastfourier_body_acceleration_jerk_meanfreq_z  
fastfourier_body_gyroscope_mean_x  
fastfourier_body_gyroscope_mean_y  
fastfourier_body_gyroscope_mean_z  
fastfourier_body_gyroscope_std_x  
fastfourier_body_gyroscope_std_y  
fastfourier_body_gyroscope_std_z  
fastfourier_body_gyroscope_meanfreq_x  
fastfourier_body_gyroscope_meanfreq_y  
fastfourier_body_gyroscope_meanfreq_z  
fastfourier_body_acceleration_magnitude_mean  
fastfourier_body_acceleration_magnitude_std  
fastfourier_body_acceleration_magnitude_meanfreq  
fastfourier_body_acceleration_jerk_magnitude_mean  
fastfourier_body_acceleration_jerk_magnitude_std  
fastfourier_body_acceleration_jerk_magnitude_meanfreq  
fastfourier_body_gyroscope_magnitude_mean  
fastfourier_body_gyroscope_magnitude_std  
fastfourier_body_gyroscope_magnitude_meanfreq  
fastfourier_body_gyroscope_jerk_magnitude_mean  
fastfourier_body_gyroscope_jerk_magnitude_std  
fastfourier_body_gyroscope_jerk_magnitude_meanfreq


Other then the subject and activity variable names, wich were added, variable names were modified from the original names which can be found in the features.txt file in the UCI HAR directory.

The names were modified to produce a more clear way to identify the variables by changing the used labels to lower case, removing parentesis, replacing hyfens for underscores, and using more extense names, specially in the case of the first character where "t"" was replaced for "time", and "f" was replaced for "fastfourier". **The "std" and "freq" in names were not changed since they are widelly used to designate standard deviation and frequency, and because they make variable names more readable**. One can argue that underscores shouldn't be used but in this case they make variables more human readable. The underscores were not used between all designations because it made sense to group some of the designations. CamelCase was removed and is deliberatelly not used.   
   
One can also argue that the names of the variables (except the first two) should countain a final designation "average" because they now represent one. But that designation on all the variables would increase the already big names and as all their values are averages it does not seem necessary.   
   
The reference to "BodyBody" on the original variable names was probably an error because has no evident particular meaning and was replaced simply for "body".
   
**Partial designations and combinations used on forming names of the variables, and their meaning:**
    
subject - identifies the experiment subject, which was carried out in a group of 30 volunteers(see 2);
activity - each person performed six activities wearing a smartphone on the waist (see 2);   
    
On the original experiment, using the smartphone embedded accelerometer and gyroscope, the 3-axial linear acceleration and 3-axial angular velocity was captured. Therefore, we have:    
    
time - a reference to the raw time domain signals;  
x, y, z - refers to the 3-axial signals in the X, Y and Z directions.  
   
The sensor signals were pre-processed by applying noise filters and then sampled. The sensor acceleration signal, which has gravitational and body motion components, was separated:
   
body_acceleration - refers to the body linear acceleration signals;     
body_gyroscope - refers to angular velocity gyroscope signals;  

gravity_acceleration - refers to gravity acceleration signals;     

jerk - refers to signals that were also derived in time (Jerk signals);   
    
magnitude - refers to the aplly of magnitude, calculated with an Euclidean Norm;  
   
fastfourier - refers to the transformation of some signals with a Fast Fourier Transform (FFT), becomming frequency domain signals;   
   
freq - refers to variables in which was estimated frequency;  
mean - refers to variables in which was estimated mean;  
std - refers to variables in which was estimated standard deviation;  

The variables names that have **meanfreq** at the end of their name refer originally to weighted average of the frequency components to obtain a mean frequency. Their value on the tidy dataset is the mean of this value grouped for each subject and activity.

The variable names composition refer to the **multiple processes of transformation of the data** from the collected observations to the final dataset. This dataset was used as raw data and then transformed again here.   

As an example, **time_body_acceleration_jerk_magnitude_std** variable name represents the process used to estimate the values it holds:  **time** domain signals were captured, then filtered to remove noise. The **body** linear **acceleration** was derived in time to obtain **jerk** signals and the **magnitude** of this signals was calculated. Finally the **standard deviation** (std) was estimated. This value is now on our tidy data the grouped average for each subject and each activity. 

A detailed description of each name formation process for each of the variable names is not made here because it would be too extent and because the prior example ilustrates how to do it. If you need more explanation on the process behind some variable names, please also take a look at the description of the original variables collected on the experiment which can be found in the features_info.txt file on the UCI HAR Dataset directory. You should also read the descripion made on the source site referenced in the README.md file of this repository.

This tidy dataset **does not contain** the variables which **do not refer to mean and standard deviation** present on the UCI HAR Dataset directory.

The values on the tidy dataset are the **average values** of the variables referent to **mean and standard deviation grouped by each subject and each activity**.

2. Units of the variables
=========================
Since the tidy dataset comes mostly from a collection of means and standard deviations, to which a group mean was applied the values are normalized, except for the values of subject and activity.

The variable **subject** varies from 1 to 30 and is an identifier of the subject who carried out the experiment.

The variable **activities** is a factor with 6 levels which correspond to the subject performed activities on the experiment:

WALKING  
WALKING_UPSTAIRS  
WALKING_DOWNSTAIRS  
SITTING  
STANDING  
LAYING  
    

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
