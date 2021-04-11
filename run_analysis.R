
#loading the packages that sounded usefull
library(data.table)
library(reshape2)
library(dplyr)


#Downloading and decompressing the data 
url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
compressed_file<- 'getdata_projectfiles_UCI HAR Dataset.zip'
if(!file.exists(compressed_file)) {download.file(url,compressed_file)}
folder <- 'UCI HAR Dataset'
if(!file.exists(folder)) {unzip(compressed_file)}



# Loading into R and exploring the shape of the data files
current_wd <- getwd() 


train_subjects <- data.table(read.table(file.path(current_wd, folder, 'train', 'subject_train.txt')))
test_subjects <- data.table(read.table(file.path(current_wd, folder, 'test', 'subject_test.txt')))
head (test_subjects)  ; head(train_subjects)

training_set <- data.table(read.table(file.path(current_wd, folder, 'train', 'X_train.txt')))
testing_set <- data.table(read.table(file.path(current_wd, folder, 'test', 'X_test.txt')))
head (training_set)  ; head(testing_set)

training_lables <- data.table(read.table(file.path(current_wd, folder, 'train', 'Y_train.txt')))
testing_lables <- data.table(read.table(file.path(current_wd, folder, 'test', 'Y_test.txt')))
head (training_lables)  ; head(testing_lables)

dim(training_lables); dim(training_set); dim(train_subjects)
dim(testing_lables); dim(testing_set); dim(test_subjects)

#The sample is of 30 people, labeled from 1 to 30; test and train subjects are different people, randomly splitted from the sample.
#Besides, dimensionality suggests labels and subjects are column vectors from the same set matrix.
#thus, merging test/train groups by column and the resulting 2 groups by row seems reasonable.



#Merging train and test sets












