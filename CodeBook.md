##CodeBook for the Week 3 Getting and Cleaning data assignment
This codebook describes the variables used in the R script. Please read [READ ME](README.md) for further details on how the script works.
##Attributes
Attributes for this are downloaded from the link below
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
The features file details all the 561 attributes of the dataset

##Feature Selection 


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The complete list of variables of each feature vector is available in 'features.txt'

##Tidy Dataset
* The input X files, Y files and the Subject file was merged for each test and the training datasets
* mean() and std()columns were extracted from the X files
* A new table was created grouped on the ```Subject_ID and the Actvity_labels``` and averaging all the columns(mean and std
columns)

## Attributes in the tidy dataset
```
Subject_id
Activity_labels
Activity_code
X1Time.BodyAccmeanX
X2Time.BodyAccmeanY
X3Time.BodyAccmeanZ
X41Time.GravityAccmeanX
X42Time.GravityAccmeanY
X43Time.GravityAccmeanZ
X81Time.BodyAccJerkmeanX
X82Time.BodyAccJerkmeanY
X83Time.BodyAccJerkmeanZ
X121Time.BodyGyromeanX
X122Time.BodyGyromeanY
X123Time.BodyGyromeanZ
X161Time.BodyGyroJerkmeanX
X162Time.BodyGyroJerkmeanY
X163Time.BodyGyroJerkmeanZ
X201Time.BodyAccMagmean
X214Time.GravityAccMagmean
X227Time.BodyAccJerkMagmean
X240Time.BodyGyroMagmean
X253Time.BodyGyroJerkMagmean
X266Frequency.BodyAccmeanX
X267Frequency.BodyAccmeanY
X268Frequency.BodyAccmeanZ
X294Frequency.BodyAccmeanFreqX
X295Frequency.BodyAccmeanFreqY
X296Frequency.BodyAccmeanFreqZ
X345Frequency.BodyAccJerkmeanX
X346Frequency.BodyAccJerkmeanY
X347Frequency.BodyAccJerkmeanZ
X373Frequency.BodyAccJerkmeanFreqX
X374Frequency.BodyAccJerkmeanFreqY
X375Frequency.BodyAccJerkmeanFreqZ
X424Frequency.BodyGyromeanX
X425Frequency.BodyGyromeanY
X426Frequency.BodyGyromeanZ
X452Frequency.BodyGyromeanFreqX
X453Frequency.BodyGyromeanFreqY
X454Frequency.BodyGyromeanFreqZ
X503Frequency.BodyAccMagmean
X513Frequency.BodyAccMagmeanFreq
X516Frequency.BodyBodyAccJerkMagmean
X526Frequency.BodyBodyAccJerkMagmeanFreq
X529Frequency.BodyBodyGyroMagmean
X539Frequency.BodyBodyGyroMagmeanFreq
X542Frequency.BodyBodyGyroJerkMagmean
X552Frequency.BodyBodyGyroJerkMagmeanFreq
X4Time.BodyAccstdX
X5Time.BodyAccstdY
X6Time.BodyAccstdZ
X44Time.GravityAccstdX
X45Time.GravityAccstdY
X46Time.GravityAccstdZ
X84Time.BodyAccJerkstdX
X85Time.BodyAccJerkstdY
X86Time.BodyAccJerkstdZ
X124Time.BodyGyrostdX
X125Time.BodyGyrostdY
X126Time.BodyGyrostdZ
X164Time.BodyGyroJerkstdX
X165Time.BodyGyroJerkstdY
X166Time.BodyGyroJerkstdZ
X202Time.BodyAccMagstd
X215Time.GravityAccMagstd
X228Time.BodyAccJerkMagstd
X241Time.BodyGyroMagstd
X254Time.BodyGyroJerkMagstd
X269Frequency.BodyAccstdX
X270Frequency.BodyAccstdY
X271Frequency.BodyAccstdZ
X348Frequency.BodyAccJerkstdX
X349Frequency.BodyAccJerkstdY
X350Frequency.BodyAccJerkstdZ
X427Frequency.BodyGyrostdX
X428Frequency.BodyGyrostdY
X429Frequency.BodyGyrostdZ
X504Frequency.BodyAccMagstd
X517Frequency.BodyBodyAccJerkMagstd
X530Frequency.BodyBodyGyroMagstd
X543Frequency.BodyBodyGyroJerkMagstd
```
