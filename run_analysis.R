rm(list=ls())

library(dplyr)

# Download data if it doesnt exist already 

file_name<- "downloaded_data.zip"
url<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"  

if (!file.exists(file_name)) { download.file(url, destfile= file_name, method = "curl")}

data_path<- "UCI HAR Dataset"

if (!file.exists(data_path)) { unzip(file_name) }

# Read the tables, select only mean and std values 

activity_labels<- read.table(file.path(data_path,"activity_labels.txt"))
features<- read.table(file.path(data_path,"features.txt"))
features_needed<- grep("mean|std",features[,2]) ##column IDs for only needed measurements

subject_train<- read.table(file.path(data_path,"train","subject_train.txt"))
labels_train<- read.table(file.path(data_path,"train","y_train.txt"))
meas_train<- read.table(file.path(data_path,"train","X_train.txt"),col.names=features[,2])
meas_train<- meas_train %>% select(all_of(features_needed)) 

subject_test<- read.table(file.path(data_path,"test","subject_test.txt"))
labels_test<- read.table(file.path(data_path,"test","y_test.txt"))
meas_test<- read.table(file.path(data_path,"test","X_test.txt"),col.names=features[,2])
meas_test<- meas_test %>% select(all_of(features_needed)) 

#add subject and activity columns, merge data together 

data_train<- cbind.data.frame(subject_train,labels_train,meas_train)
colnames(data_train)=c("subject","activity",names(meas_train))

data_test<- cbind.data.frame(subject_test,labels_test,meas_test)
colnames(data_test)=c("subject","activity",names(meas_test))

data<- rbind.data.frame(data_train,data_test)
data<- arrange(data,subject,activity)

#convert activity IDs into activity labels 

data$activity <- factor(data$activity, levels = activity_labels[, 1], labels = activity_labels[, 2])

#create tidy data set with mean values per subject per activity 

tidy_data_mean<- data %>% group_by(subject, activity) %>% summarize(across(everything(), list(mean)))

#save the ouptput file 

write.table(tidy_data_mean,"./tidy_data_set.txt")


