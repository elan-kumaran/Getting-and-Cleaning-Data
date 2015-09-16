library(dplyr)
library(reshape2)

##Program to read test and training data

##Function to concatenate the X file, Y file and the Subject File
concatfiles <-function(a,b,c){
        temp1<-cbind(b,a)
        temp2<-cbind(c,temp1)
        
}

##Function to extract only the "mean" and "std" columns
extract_columns<-function(a,b){
        meancols<-grep("mean",b)
        stdcols<-grep("std",b)
        temp1<-a[,meancols]
        temp2<-a[,stdcols]
        output<-cbind(temp1,temp2)
}

##Function to remane the attributes name into meaningful names

rename_columns<-function(a) {
        a<-gsub("[()-]","",a)
        a<-gsub("\\s","",a)
        a<-gsub("fBody","Frequency.Body",a)
        a<-gsub("tBody","Time.Body",a)
        a<-gsub("fGravity","Frequency.Gravity",a)
        a<-gsub("tGravity","Time.Gravity",a)
}

##Read features file and rename the features meaningfully
attr_names<-readLines('features.txt')
attr_names<-rename_columns(attr_names)

##Read actvity file and label the columns
actvty_label<-read.table('activity_labels.txt',sep = "",
                         col.names=c("Activity_id", "Activity_labels"))

##Read training files and label the columns
subject_train<-read.table('subject_train.txt',sep = "",col.names="Subject_id")
train_data<-read.table('X_train.txt',sep = "",col.names=attr_names)
actvty_train<-read.table('Y_train.txt',sep = "",col.names="Activity_code")

##Read test files and label the columns
subject_test<-read.table('subject_test.txt',sep = "",col.names="Subject_id")
test_data<-read.table('X_test.txt',sep = "",col.names=attr_names)
actvty_test<-read.table('Y_test.txt',sep = "",col.names="Activity_code")

##Extract only the "mean" and "std" columns
train_output<-extract_columns(train_data,attr_names)
test_output<-extract_columns(test_data,attr_names)

##Concatenate the X file, Y file and the Subject File 
train_dataset<-concatfiles(train_output,subject_train,actvty_train)
test_dataset<-concatfiles(test_output,subject_test,actvty_test)

##Merge the train and test files and add create the final file
final_dataset<-rbind(train_dataset,test_dataset)
final_extract<-merge(final_dataset,actvty_label,by.x="Activity_code",by.y="Activity_id")

##Extract tidy file from the final extract 
tidy_table<-final_extract %>% 
        group_by(Subject_id,Activity_labels ) %>%
        summarise_each(funs(mean(., na.rm=TRUE)))

##Write tidy file as a text file
write.table(tidy_table,file="tidydataset.txt",row.name=FALSE)

