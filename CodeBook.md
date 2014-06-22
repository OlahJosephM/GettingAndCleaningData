# "TidyDataSet"

* Describes data source (Data Origin & Data Files)
* Describes variables of data frame itself (Variables)

### Data Origin
The data came from the following site:
> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Data Files
The top level directory is "UCI HAR Dataset".

This data set was randomly divided into a training set and a testing set.

File Name           | Directory | Content
------------------- | --------- | -------
activity_labels.txt | UCI HAR Dataset | Activity code-label cross walk
features.txt | UCI HAR Dataset | list of measures used in dataset
subject_test.txt | UCI HAR Dataset/test | subject of given data point.
Y_test.txt | UCI HAR Dataset/test | activity of given data point
X_test.txt | UCI HAR Dataset/test | measures of given data point.
subject_train.txt | UCI HAR Dataset/train | subject of given data point.
Y_train.txt | UCI HAR Dataset/train | activity of given data point
X_train.txt | UCI HAR Dataset/train | measures of given data point.


### Variables

Name | Domain | Description
---- | ------ | -----------
subject | NA | Volunteer
activity | NA | prediction of whether walking, sitting, standing, laying, or going up/down stairs.
tBodyAcc-mean()-X | time | mean of body acceleration in direction of X
tBodyAcc-mean()-Y | time | mean of body acceleration in direction of Y
tBodyAcc-mean()-Z | time | mean of body acceleration in direction of Z
tBodyAcc-std()-X | time |  mean of body acceleration in direction of X
tBodyAcc-std()-Y | time |  mean of body acceleration in direction of Y
tBodyAcc-std()-Z | time |  mean of body acceleration in direction of Z
tGravityAcc-mean()-X | time | mean of gravitational acceleration in direction of X
tGravityAcc-mean()-Y | time | mean of gravitational acceleration in direction of Y
tGravityAcc-mean()-Z | time | mean of gravitational acceleration in direction of Z
tGravityAcc-std()-X | time | standard deviation of gravitational acceleration in direction of X
tGravityAcc-std()-Y | time | standard deviation of gravitational acceleration in direction of Y
tGravityAcc-std()-Z | time | standard deviation of gravitational acceleration in direction of Z
tBodyAccJerk-mean()-X | time | mean of body jerk in direction of X
tBodyAccJerk-mean()-Y | time | mean of body jerk in direction of Y
tBodyAccJerk-mean()-Z | time | mean of body jerk in direction of Z  
tBodyAccJerk-std()-X | time | standard deviation of body jerk in direction of X
tBodyAccJerk-std()-Y | time | standard deviation of body jerk in direction of Y
tBodyAccJerk-std()-Z | time | standard deviation of body jerk in direction of Z
tBodyGyro-mean()-X | time | mean of body acceleration measured by gyro in direction of X
tBodyGyro-mean()-Y | time | mean of body acceleration measured by gyro in direction of Y
tBodyGyro-mean()-Z | time | mean of body acceleration measured by gyro in direction of Z   
tBodyGyro-std()-X | time | standard deviation of body acceleration measured by gyro in direction of X
tBodyGyro-std()-Y | time | standard deviation of body acceleration measured by gyro in direction of Y   
tBodyGyro-std()-Z | time | standard deviation of body acceleration measured by gyro in direction of Z
tBodyGyroJerk-mean()-X | time | mean of body jerk measured by gyro in direction of X
tBodyGyroJerk-mean()-Y | time | mean of body jerk measured by gyro in direction of Y
tBodyGyroJerk-mean()-Z | time | mean of body jerk measured by gyro in direction of Z
tBodyGyroJerk-std()-X | time | standard deviation of body jerk measured by gyro in direction of X
tBodyGyroJerk-std()-Y | time | standard deviation of body jerk measured by gyro in direction of Y   
tBodyGyroJerk-std()-Z | time | standard deviation of body jerk measured by gyro in direction of Z      
tBodyAccMag-mean() | time | mean of the magntiude of body acceleration
tBodyAccMag-std() | time | standard deviation of the magntiude of body acceleration          
tGravityAccMag-mean() | time | mean of the magntiude of gravitational acceleration
tGravityAccMag-std() | time | standard deviation of the magntiude of gravitational acceleration
tBodyAccJerkMag-mean() | time | mean of the magntiude of body jerk
tBodyAccJerkMag-std() | time | standard deviation of the magntiude of body jerk
tBodyGyroMag-mean() | time | mean of the magntiude of body measured by gyro
tBodyGyroMag-std() | time | standard deviation of the magntiude of body measured by gyro
tBodyGyroJerkMag-mean() | time | mean of the magntiude of body jerk measured by gyro
tBodyGyroJerkMag-std() | time | standard deviation of the magntiude of body jerk measured by gyro
fBodyAcc-mean()-X | frequency | mean of the magntiude of body accelerations in direction of X
fBodyAcc-mean()-Y | frequency | mean of the magntiude of body accelerations in direction of Y
fBodyAcc-mean()-Z | frequency | mean of the magntiude of body accelerations in direction of Z
fBodyAcc-std()-X | frequency | standard deviation of the magntiude of body accelerations in direction of X
fBodyAcc-std()-Y | frequency | standard deviation of the magntiude of body accelerations in direction of Y
fBodyAcc-std()-Z | frequency | standard deviation of the magntiude of body accelerations in direction of Z
fBodyAccJerk-mean()-X | frequency | mean of the magntiude of body jerk in direction of X
fBodyAccJerk-mean()-Y | frequency | mean of the magntiude of body jerk in direction of Y
fBodyAccJerk-mean()-Z | frequency | mean of the magntiude of body jerk in direction of Z
fBodyAccJerk-std()-X | frequency | standard deviation of the magntiude of body jerk in direction of X
fBodyAccJerk-std()-Y | frequency | standard deviation of the magntiude of body jerk in direction of Y
fBodyAccJerk-std()-Z | frequency | standard deviation of the magntiude of body jerk in direction of Z
fBodyGyro-mean()-X | frequency | mean of the magntiude of body jerk measurd by gyro in direction of X
fBodyGyro-mean()-Y | frequency | mean of the magntiude of body jerk measurd by gyro in direction of Y
fBodyGyro-mean()-Z | frequency | mean of the magntiude of body jerk measurd by gyro in direction of Z
fBodyGyro-std()-X | frequency | standard deviation of the magntiude of body jerk measurd by gyro in direction of X
fBodyGyro-std()-Y | frequency | standard deviation of the magntiude of body jerk measurd by gyro in direction of Y
fBodyGyro-std()-Z | frequency | standard deviation of the magntiude of body jerk measurd by gyro in direction of Z
fBodyAccMag-mean() | frequency | mean of magnitude of body acceleration
fBodyAccMag-std() | frequency | standard deviation of magnitude of body acceleration
fBodyBodyAccJerkMag-mean()| frequency | mean of magnitude of body-body jerk
fBodyBodyAccJerkMag-std()| frequency | standard deviation of magnitude of body-body jerk
fBodyBodyGyroMag-mean() | frequency | mean of magnitude of body-body acceleration measured by gyro
fBodyBodyGyroMag-std() | frequency | standard deviation of magnitude of body-body acceleration measured by gyro
fBodyBodyGyroJerkMag-mean() | frequency | mean of magnitude of body-body jerk measured by gyro
fBodyBodyGyroJerkMag-std() | frequency | standard deviation of magnitude of body-body jerk measured by gyro

### Transformations to Create Data Frame, TidyDataSet.

From the X_*.txt files, only columns with either "-mean()" or "-std()" were extracted for the data frame.

The activity column of data was created by transforming the activity codes of the Y_*.txt files to the activity labels as listed in the activities.txt file.

The separate data & train data frame were combined using the rbind() function.





