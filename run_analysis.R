library(data.table)
library(reshape2)
library(dplyr)

getwd()

url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
compressed_file<- 'getdata_projectfiles_UCI HAR Dataset.zip'
if(!file.exists(compressed_file)) {download.file(url,compressed_file)}
folder <- 'UCI HAR Dataset'
if(!file.exists(folder)) {unzip(compressed_file)}





