# Getting and Cleaning Data Course Project

library(data.table) # required by 'fread'
library(plyr) # required by 'ddply'

# download the UCI HAR zip package if necessary

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

destfileZip <- "UCI_HAR.zip"

# packages files
filesTrain <- c("UCI HAR Dataset/train/X_train.txt", "UCI HAR Dataset/train/y_train.txt", "UCI HAR Dataset/train/subject_train.txt")
filesTest <- c("UCI HAR Dataset/test/X_test.txt", "UCI HAR Dataset/test/y_test.txt", "UCI HAR Dataset/test/subject_test.txt")
fileFeatures <- "UCI HAR Dataset/features.txt"
fileLabels <- "UCI HAR Dataset/activity_labels.txt"

# check if all the files are existing
if(!all(file.exists(c(filesTrain, filesTest, fileFeatures, fileLabels))))
{
    download.file(url, destfile = destfileZip)
    unzip(destfileZip)
}

# read the training and test files (fread is faster than read.table)
dataTrain <- fread(filesTrain[1])
dataTrainY <- fread(filesTrain[2])
dataTrainSubject <- read.table(filesTrain[3])
dataTest <- fread(filesTest[1])
dataTestY <- fread(filesTest[2])
dataTestSubject <- read.table(filesTest[3])

# Assignment task 1: Merge the training and the test sets to create one data set

tidyData <- data.frame(rbind(cbind(dataTrainSubject, dataTrainY, dataTrain), cbind(dataTestSubject, dataTestY, dataTest)))

# (optional) remove the unused objects to save memory
rm(dataTrain, dataTrainY, dataTrainSubject, dataTest, dataTestSubject, dataTestY)

# Assignment task 2: Extract only the measurements on the mean and standard deviation for each measurement

# read features
dataFeatures <- read.table(fileFeatures)[,2]

# get indices of characters matching 'mean()' or 'std()'
ind <- grep("(mean|std)\\(\\)", dataFeatures)

tidyData <- tidyData[,c(1, 2, ind + 2)]

# Assignment task 3: Use descriptive activity names to name the activities in the data set

# read activity names
dataLabels <- as.character(read.table(fileLabels)[,2])

tidyData[,2] <- dataLabels[tidyData[,2]]

# Assignment task 4: Appropriately label the data set with descriptive variable names

names(tidyData) <- c("subject", "activity", as.character(dataFeatures[ind]))

# remove '()' from column names
names(tidyData) <- gsub("\\(\\)", "", names(tidyData))

# replace '-' by '.' in column names
names(tidyData) <- gsub("-", "\\.", names(tidyData))

# replace 'fBodyBody' by 'fBody' in column names
names(tidyData) <- gsub("fBodyBody", "fBody", names(tidyData))

# save the first tidy data set
write.table(tidyData, "UCI_HAR_mean_std.txt", row.name=FALSE)

# Assignment task 5: From the last tidy data set, create a second, independent tidy data set with the average of each variable for each activity and each subject

tidyData <- ddply(tidyData, .(subject, activity), function(x) colMeans(x[, 3:ncol(tidyData)]))

# save the second tidy data set
write.table(tidyData, "UCI_HAR_averages.txt", row.name=FALSE)
