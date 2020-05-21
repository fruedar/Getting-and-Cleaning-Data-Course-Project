#Download Files from Web and unzip the data into the "data" directory
if(!file.exists("data")){dir.create("data")}

url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,destfile = "./data/raw_Data.zip")
unzip("./data/raw_Data.zip",exdir = "./data/dat")

#Read the extracted files

##Read the test data
xtest<- read.table("./data/UCI HAR Dataset/test/X_test.txt")
ytest<- read.table("./data/UCI HAR Dataset/test/y_test.txt")
stest<- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

##Read the train data
xtrain<- read.table("./data/UCI HAR Dataset/train/X_train.txt")
ytrain<- read.table("./data/UCI HAR Dataset/train/y_train.txt")
strain<- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

##Read the features and activity files
features<-as.character(unlist(read.table("./data/UCI HAR Dataset/features.txt")[2]))
activity<-unlist(read.table("./data/UCI HAR Dataset/activity_labels.txt",)[2])

#Formatting the names of the variables and activities
varnames<-c("subject","activity",features)
activity<-gsub("_","",activity)

#Set descriptive names to the activity factor
library(plyr)
ytrain<-as.factor(unlist(ytrain))
ytest<-as.factor(unlist(ytest))

ytest<-mapvalues(ytest,from=1:6,to=activity)
ytrain<-mapvalues(ytrain,from=1:6,to=activity)

#Merge the subject, activity and variable data for both train and test groups

ztest<-cbind(stest,ytest,xtest)
ztrain<-cbind(strain,ytrain,xtrain)
names(ztest)<-varnames 
names(ztrain)<-varnames 

#Merge the test and train data sets
ztotal<-rbind(ztest,ztrain)

#Extract the measurements on the Mean and Standard deviation (Std) for each measurement
tidyData<-ztotal[grep("activity|subject|mean\\()|std",names(ztotal),value = TRUE)]

#Tidy up the tidyData names to ease readibility and further analysis
names(tidyData)<-gsub("mean\\()","Mean",names(tidyData))
names(tidyData)<-gsub("std\\()","Std",names(tidyData))
names(tidyData)<-gsub("-","",names(tidyData))

# Create a data set with the average of each variable for each activity and subject 
library(reshape2)

melted<-melt(tidyData,id=c("subject","activity"))
averageData<-dcast(melted,subject+activity~variable,mean)
write.table(averageData, "./data/tidyDataset.txt", row.names = FALSE)
