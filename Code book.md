# Code book

## About this repository

This repo is an assignment for the Jhons Hopkins MOOC "Getting and cleaning data"
The exact instructuons are quite explanatory of the process and goes as follows:

```
You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
   for each activity and each subject.
```
## About the  data
The original source of data is the [UCI Machine learning repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones); it was collected from the movement sensors in a Galaxy s phone.
Going to their page and by clickig on 'data folder' you can obtain complete information about the data.

As for the units, the analysis consisted on merging, filtering and calculating means, so they are mantained as they were on the original data.
The transformations, though, led to the classes being numeric, except for  `activity`   which is a factor.

## About the choices

As you could confirm in the original sources, the data was atomised by subject (which were separated into test and training subjects), by labels and by axis (X,Y and Z).
To group them togheter, given the names and lables were separated from the information, I relied on dimentionality and the fact there was 30 different people splitted into
two groups. From there, it was a matter of using the tools (packages) that were demonstrated to us during the course. Except for `across()` which is an implemetation that is
newer than the content of the course and that is sugested in R help, when looking for column-wise functions implementation. 

## About reproducibility and variables

The easiest way to look at the end result of the process is to run  `run_analysis.R`, which should garantee reproducibility, as long as the link 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip is still working, or you have the data on your working directory. 
Anyhow, as it is part of the review criteria, and you are probably here to peer review this work 👋 🙏 , here is the list all the variables resulting from
extraxting just the mean and estandard deviation from the re-ensambled data, and then taking their average by subject:

```

subject
activity
Average of-timeBodyAcceleraion-mean()-X
Average of-timeBodyAcceleraion-mean()-Y
Average of-timeBodyAcceleraion-mean()-Z
Average of-timeBodyAcceleraion-std()-X
Average of-timeBodyAcceleraion-std()-Y
Average of-timeBodyAcceleraion-std()-Z
Average of-timeGravityAcceleraion-mean()-X
Average of-timeGravityAcceleraion-mean()-Y
Average of-timeGravityAcceleraion-mean()-Z
Average of-timeGravityAcceleraion-std()-X
Average of-timeGravityAcceleraion-std()-Y
Average of-timeGravityAcceleraion-std()-Z
Average of-timeBodyAcceleraionJerk-mean()-X
Average of-timeBodyAcceleraionJerk-mean()-Y
Average of-timeBodyAcceleraionJerk-mean()-Z
Average of-timeBodyAcceleraionJerk-std()-X
Average of-timeBodyAcceleraionJerk-std()-Y
Average of-timeBodyAcceleraionJerk-std()-Z
Average of-timeBodyGyroscopeo-mean()-X
Average of-timeBodyGyroscopeo-mean()-Y
Average of-timeBodyGyroscopeo-mean()-Z
Average of-timeBodyGyroscopeo-std()-X
Average of-timeBodyGyroscopeo-std()-Y
Average of-timeBodyGyroscopeo-std()-Z
Average of-timeBodyGyroscopeoJerk-mean()-X
Average of-timeBodyGyroscopeoJerk-mean()-Y
Average of-timeBodyGyroscopeoJerk-mean()-Z
Average of-timeBodyGyroscopeoJerk-std()-X
Average of-timeBodyGyroscopeoJerk-std()-Y
Average of-timeBodyGyroscopeoJerk-std()-Z
Average of-timeBodyAcceleraionMag-mean()
Average of-timeBodyAcceleraionMag-std()
Average of-timeGravityAcceleraionMag-mean()
Average of-timeGravityAcceleraionMag-std()
Average of-timeBodyAcceleraionJerkMag-mean()
Average of-timeBodyAcceleraionJerkMag-std()
Average of-timeBodyGyroscopeoMag-mean()
Average of-timeBodyGyroscopeoMag-std()
Average of-timeBodyGyroscopeoJerkMag-mean()
Average of-timeBodyGyroscopeoJerkMag-std()
Average of-frecuencyBodyAcceleraion-mean()-X
Average of-frecuencyBodyAcceleraion-mean()-Y
Average of-frecuencyBodyAcceleraion-mean()-Z
Average of-frecuencyBodyAcceleraion-std()-X
Average of-frecuencyBodyAcceleraion-std()-Y
Average of-frecuencyBodyAcceleraion-std()-Z
Average of-frecuencyBodyAcceleraionJerk-mean()-X
Average of-frecuencyBodyAcceleraionJerk-mean()-Y
Average of-frecuencyBodyAcceleraionJerk-mean()-Z
Average of-frecuencyBodyAcceleraionJerk-std()-X
Average of-frecuencyBodyAcceleraionJerk-std()-Y
Average of-frecuencyBodyAcceleraionJerk-std()-Z
Average of-frecuencyBodyGyroscopeo-mean()-X
Average of-frecuencyBodyGyroscopeo-mean()-Y
Average of-frecuencyBodyGyroscopeo-mean()-Z
Average of-frecuencyBodyGyroscopeo-std()-X
Average of-frecuencyBodyGyroscopeo-std()-Y
Average of-frecuencyBodyGyroscopeo-std()-Z
Average of-frecuencyBodyAcceleraionMag-mean()
Average of-frecuencyBodyAcceleraionMag-std()
Average of-frecuencyBodyAcceleraionJerkMag-mean()
Average of-frecuencyBodyAcceleraionJerkMag-std()
Average of-frecuencyBodyGyroscopeoMag-mean()
Average of-frecuencyBodyGyroscopeoMag-std()
Average of-frecuencyBodyGyroscopeoJerkMag-mean()
Average of-frecuencyBodyGyroscopeoJerkMag-std()


```




