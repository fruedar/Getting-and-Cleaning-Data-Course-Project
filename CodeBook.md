# Course Project Code Book

## Description

### Data
The data set includes the average of the mean and standard deviation of 33 signals from an  UCI HAR experiment carried out with 30 volunteers within an age bracket of 19-48 years which performed six activities. The data is segmented for each volunteer and each activity.

### Identifiers
+ subject: Identifies the volunteer (30 volunteers)
+ activity: Identifies the activity type (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING)

### Variables
There are 66 variables which represent the average of the mean or standard deviation (Std) of the following signals:

Note: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

+ tBodyAcc-XYZ
+ tGravityAcc-XYZ
+ tBodyAccJerk-XYZ
+ tBodyGyro-XYZ
+ tBodyGyroJerk-XYZ
+ tBodyAccMag
+ tGravityAccMag
+ tBodyAccJerkMag
+ tBodyGyroMag
+ tBodyGyroJerkMag
+ fBodyAcc-XYZ
+ fBodyAccJerk-XYZ
+ fBodyGyro-XYZ
+ fBodyAccMag
+ fBodyAccJerkMag
+ fBodyGyroMag
+ fBodyGyroJerkMag

## Clean-up Process
1. The raw data was downloaded from [UCI HAR DATASET](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

2. The following files where imported into RStudio:
  + X_test.txt
  + y_test.txt
  + subject_test.txt
  + X_train.txt
  + y_train.txt
  + subject_train.txt
  + activity_labels.txt
  + features.txt

3. The activity and features labels where reformatted by eliminating underscores,dashes and parenthesis to ease readability and further analysis.

4. The X_test.txt, y_test.txt and subject_test.txt files where merged, the activities factor was renamed using descriptive names for each of the 6 activities of the experiment, and the variable names where set using the features labels. The same procedure was followed to clean the files of the train group.

5. The resulting data sets from the test and train groups where merged and a new tidy data set was created by extracting only the columns where the mean and standard deviation measurements for each variable where stored.

6. Finally, another data set was created, which contains the average of each variable for each activity and subject. This data set was exported as "tidyDataset.txt".

  
