library(magrittr)
library(dplyr)

#Merging the training and the test sets to create one data set.
#Getting features to be used as variable names and renaming those duplicated
features<-read.table("./UCI HAR Dataset/features.txt",check.names = FALSE)
features<-make.names(features[,2],unique=TRUE)
#Getting train and test data as numeric, named with features
train<-read.table("./UCI HAR Dataset/train/X_train.txt",check.names = FALSE, 
       col.names=features,colClasses ="numeric")
test<-read.table("./UCI HAR Dataset/test/X_test.txt",check.names = FALSE, 
                 col.names=features,colClasses ="numeric")
#merging train and data measurements
data<-rbind(train,test)

#Getting and merging train and test subjects and naming the result "subject"
trainsubject <- read.table("./UCI HAR Dataset/train/subject_train.txt",
       check.names = FALSE)
testsubject<- read.table("./UCI HAR Dataset/test/subject_test.txt",
                         check.names = FALSE)
subject<-rbind(trainsubject,testsubject)
names(subject)<-"subject"

#Getting and merging train and test activity and naming it "activity"
activitytrain <- read.table("./UCI HAR Dataset/train/y_train.txt",
                      check.names = FALSE)
activitytest <- read.table("./UCI HAR Dataset/test/y_test.txt",
                            check.names = FALSE)
activity<-rbind(activitytrain,activitytest)
names(activity)<-"activity"

#Getting activity_labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",
                       check.names = FALSE)
#replacing activity codes by activity labels in activity, setting activity as vector
activity<-sapply(activity,function(x) activity_labels[x,2]) %>% as.vector 

#combining the subject, activity and data by columns
data<-cbind(subject,activity,data)


#Extracting only the measurements on the mean and standard deviation for each
#measurement.

#select columns containing mean and standart deviation
data<-select(data,matches("mean|std|subject|activity",ignore.case=TRUE))

#as descriptive activity names to name the activities in the data set is done
#Appropriately labeling the data set with descriptive variable names.
names<-tolower(names(data))
names<-gsub("\\."," ",names)
names<-gsub("\\   "," ",names)
names<-gsub("\\  "," ",names)
names<-gsub("\\ $","", names)
names<-gsub("bodybody","body", names)
names<-gsub("fbody","frequency body ", names)
names<-gsub("tbody","time body ", names)
names<-gsub("tgravityacc","time gravity acc", names)
names(data)<-names

#Creating tidy dataset from step 4 with averages by subject and activity
data2<-tbl_df(data)
data2<-group_by(data,subject,activity)
data2<-summarise_each(data2, funs(mean))