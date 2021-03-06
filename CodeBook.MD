# Code Book for tidy data submitted / generated by R script

The tidy data comprises 180 observations (rows) of 81 variables (cols).
Each observation records the average value for each of 79 variables for a unique combination of subject and activity.

## Average Variables (listed in order of 1 to 79):

All of the following "Average_...." variables are adapted from the original code book provided in the project's zip.
Hence, all units and technical meaning can be referenced from the features_info.txt.

The main difference is that the values now represent an average of the many readings made for each of these measurements.
Each of the measurements' average is recorded for each activity and each subject.

* "Average tBodyAcc-mean()-X" 
* "Average tBodyAcc-mean()-Y" 
* "Average tBodyAcc-mean()-Z" 
* "Average tBodyAcc-std()-X" 
* "Average tBodyAcc-std()-Y" 
* "Average tBodyAcc-std()-Z" 
* "Average tGravityAcc-mean()-X" 
* "Average tGravityAcc-mean()-Y" 
* "Average tGravityAcc-mean()-Z" 
* "Average tGravityAcc-std()-X" 
* "Average tGravityAcc-std()-Y" 
* "Average tGravityAcc-std()-Z" 
* "Average tBodyAccJerk-mean()-X" 
* "Average tBodyAccJerk-mean()-Y" 
* "Average tBodyAccJerk-mean()-Z" 
* "Average tBodyAccJerk-std()-X" 
* "Average tBodyAccJerk-std()-Y" 
* "Average tBodyAccJerk-std()-Z" 
* "Average tBodyGyro-mean()-X" 
* "Average tBodyGyro-mean()-Y" 
* "Average tBodyGyro-mean()-Z" 
* "Average tBodyGyro-std()-X" 
* "Average tBodyGyro-std()-Y" 
* "Average tBodyGyro-std()-Z" 
* "Average tBodyGyroJerk-mean()-X" 
* "Average tBodyGyroJerk-mean()-Y" 
* "Average tBodyGyroJerk-mean()-Z" 
* "Average tBodyGyroJerk-std()-X" 
* "Average tBodyGyroJerk-std()-Y" 
* "Average tBodyGyroJerk-std()-Z" 
* "Average tBodyAccMag-mean()" 
* "Average tBodyAccMag-std()" 
* "Average tGravityAccMag-mean()" 
* "Average tGravityAccMag-std()"
* "Average tBodyAccJerkMag-mean()" 
* "Average tBodyAccJerkMag-std()"
* "Average tBodyGyroMag-mean()" 
* "Average tBodyGyroMag-std()" 
* "Average tBodyGyroJerkMag-mean()"
* "Average tBodyGyroJerkMag-std()" 
* "Average fBodyAcc-mean()-X" 
* "Average fBodyAcc-mean()-Y" 
* "Average fBodyAcc-mean()-Z" 
* "Average fBodyAcc-std()-X" 
* "Average fBodyAcc-std()-Y" 
* "Average fBodyAcc-std()-Z"
* "Average fBodyAcc-meanFreq()-X"
* "Average fBodyAcc-meanFreq()-Y"
* "Average fBodyAcc-meanFreq()-Z"
* "Average fBodyAccJerk-mean()-X" 
* "Average fBodyAccJerk-mean()-Y"
* "Average fBodyAccJerk-mean()-Z" 
* "Average fBodyAccJerk-std()-X" 
* "Average fBodyAccJerk-std()-Y"
* "Average fBodyAccJerk-std()-Z" 
* "Average fBodyAccJerk-meanFreq()-X"
* "Average fBodyAccJerk-meanFreq()-Y" 
* "Average fBodyAccJerk-meanFreq()-Z" 
* "Average fBodyGyro-mean()-X" 
* "Average fBodyGyro-mean()-Y" 
* "Average fBodyGyro-mean()-Z" 
* "Average fBodyGyro-std()-X"
* "Average fBodyGyro-std()-Y"
* "Average fBodyGyro-std()-Z"
* "Average fBodyGyro-meanFreq()-X" 
* "Average fBodyGyro-meanFreq()-Y" 
* "Average fBodyGyro-meanFreq()-Z" 
* "Average fBodyAccMag-mean()"
* "Average fBodyAccMag-std()" 
* "Average fBodyAccMag-meanFreq()" 
* "Average fBodyBodyAccJerkMag-mean()"
* "Average fBodyBodyAccJerkMag-std()"
* "Average fBodyBodyAccJerkMag-meanFreq()"
* "Average fBodyBodyGyroMag-mean()"
* "Average fBodyBodyGyroMag-std()" 
* "Average fBodyBodyGyroMag-meanFreq()"
* "Average fBodyBodyGyroJerkMag-mean()" 
* "Average fBodyBodyGyroJerkMag-std()"
* "Average fBodyBodyGyroJerkMag-meanFreq()"


## Subject and Activity Variables (listed in order of 80 to 81)

Each observation of average measurements above is made for a unique combination of subject and activity_name.

* "Subject" - Integer, Range: [1,30]. A unique ID for each one of the 30 subjects who participated in the study.
* "Activity_Name" - String, Range: [LAYING,SITTING,STANDING,WALKING,WALKING_DOWNSTAIRS,WALKING_UPSTAIRS]
