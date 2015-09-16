# Getting-and-Cleaning-Data
This read Me fil explains the run-Analysis.R script that has been created as a part of week 3 assignments in ```Getting and Cleaning Data course```

R script that does the following has been created
   * Merges the training and the test sets to create one data set.
   * Extracts only the measurements on the mean and standard deviation for each measurement. 
   * Uses descriptive activity names to name the activities in the data set
   * Appropriately labels the data set with descriptive variable names. 
   * From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

#Packages used
```
* R base base package
* Dplyr
```

#Input datasets
The test and training files extracted from the zip file below as used
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

#Execution
The R script  run_analysis.R should be executed. The input datasets should be in the R working directory

#Steps
* Read all the input files with approriate column names
* Rename the column names with meaningful names
* Extract the "mean" and "std" columns from the training and test dataset separatelyConcatenate the X files, Y files and the * Activity files for test and trainsing datsets separately
* Combine both the test and test datasets 
* Add the "activity lebels"
* Create a tidy dataset that has the verage of each variable for each activity and each subject.


#Output
```
tidydataset.txt is created. This has the independent tidy data set with the average of each variable for each activity and each subject.
```
