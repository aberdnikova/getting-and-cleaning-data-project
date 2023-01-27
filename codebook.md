# Coursera "Getting and cleaning data" course project code book

## General description

This code book describes the data stored in the file `tidy_data_set.txt`. For more information about the data set in general please see `README.md`.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

`tidy_data_set.txt` presents the data set with the average value of each variable for each activity and each subject.

## Variables

1\. `subject` - ID of one of the 30 volunteers;

2\. `activity` - type of performed activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING);

3-81. The measurements from the accelerometer and gyroscope, averaged for each activity type for each subject. Detailed description of the measurements is taken from the [source website](https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#):

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

> These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

> tBodyAcc-XYZ\
> tGravityAcc-XYZ\
> tBodyAccJerk-XYZ\
> tBodyGyro-XYZ\
> tBodyGyroJerk-XYZ\
> tBodyAccMag\
> tGravityAccMag\
> tBodyAccJerkMag\ 
> tBodyGyroMag\
> tBodyGyroJerkMag\
> fBodyAcc-XYZ\
> fBodyAccJerk-XYZ\
> fBodyGyro-XYZ\
> fBodyAccMag\
> fBodyAccJerkMag\
> fBodyGyroMag\
> fBodyGyroJerkMag\

> The set of variables that were estimated from these signals are:

> mean(): Mean value\
> std(): Standard deviation\

> Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

> gravityMean\
> tBodyAccMean\
> tBodyAccJerkMean\
> tBodyGyroMean\
> tBodyGyroJerkMean
