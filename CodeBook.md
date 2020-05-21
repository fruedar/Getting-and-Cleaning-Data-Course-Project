# Course Project Code Book

## Description

### Identifiers
+ subject: Identifies the volunteer (30 volunteers)
+ activity: Identifies the activity type (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING)

### Variables
Each variable is the average of the variable 

+ "tBodyAccMeanX"
+ "tBodyAccMeanY"
+ "tBodyAccMeanZ"
+ "tBodyAccStdX"
+ "tBodyAccStdY"
+ "tBodyAccStdZ"
+ "tGravityAccMeanX"
+ "tGravityAccMeanY"
+ "tGravityAccMeanZ"
+ "tGravityAccStdX"
+ "tGravityAccStdY"
+ "tGravityAccStdZ"
+ "tBodyAccJerkMeanX"
+ "tBodyAccJerkMeanY"
+ "tBodyAccJerkMeanZ"
+ "tBodyAccJerkStdX"
+ "tBodyAccJerkStdY"
+ "tBodyAccJerkStdZ"
+ "tBodyGyroMeanX"
+ "tBodyGyroMeanY"
+ "tBodyGyroMeanZ"
+ "tBodyGyroStdX"
+ "tBodyGyroStdY"
+ "tBodyGyroStdZ"
+ "tBodyGyroJerkMeanX"
+ "tBodyGyroJerkMeanY"
+ "tBodyGyroJerkMeanZ"
+ "tBodyGyroJerkStdX"
+ "tBodyGyroJerkStdY"
+ "tBodyGyroJerkStdZ"
+ "tBodyAccMagMean"
+ "tBodyAccMagStd"
+ "tGravityAccMagMean"
+ "tGravityAccMagStd"
+ "tBodyAccJerkMagMean"
+ "tBodyAccJerkMagStd"
+ "tBodyGyroMagMean"
+ "tBodyGyroMagStd"
+ "tBodyGyroJerkMagMean"
+ "tBodyGyroJerkMagStd"
+ "fBodyAccMeanX"
+ "fBodyAccMeanY"
+ "fBodyAccMeanZ"
+ "fBodyAccStdX"
+ "fBodyAccStdY"
+ "fBodyAccStdZ"
+  "fBodyAccJerkMeanX"
+ "fBodyAccJerkMeanY"
+ "fBodyAccJerkMeanZ"
+ "fBodyAccJerkStdX"
+ "fBodyAccJerkStdY"
+  "fBodyAccJerkStdZ"
+ "fBodyGyroMeanX"
+ "fBodyGyroMeanY"
+ "fBodyGyroMeanZ"
+ "fBodyGyroStdX"
+ "fBodyGyroStdY"
+ "fBodyGyroStdZ"
+ "fBodyAccMagMean"
+ "fBodyAccMagStd"
+ "fBodyBodyAccJerkMagMean"
+ "fBodyBodyAccJerkMagStd"
+ "fBodyBodyGyroMagMean"
+ "fBodyBodyGyroMagStd"
+ "fBodyBodyGyroJerkMagMean"
+ "fBodyBodyGyroJerkMagStd"

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

  
