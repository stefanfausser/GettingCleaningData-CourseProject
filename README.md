# GettingCleaningData-CourseProject
Coursera Getting and Cleaning Data Course Project

* This file describes the cleaning R script `run_analysis.R`
* It is a recipe that describes the cleaning and transforming done to the raw data of the *UCI HAR* data set to produce two tidy data sets `UCI_HAR_mean_std.txt` and `UCI_HAR_averages.txt`
* The source of the *UCI HAR* data set and the description of each variable and its values of the resulting tidy data sets can be found in `CodeBook.md`

* The `run_analysis.R` script does the following:
    * **Input:** None or *UCI HAR* data set (optional)
    * It downloads the *UCI HAR* data set if necessary
    * **Assignment task 1**: It reads the training and test data sets and merges them to create one data set `UCI_HAR_mean_std.txt`
        * Column order:
            1. Identity (from `subject_train.txt`, `subject_test.txt`)
            1. Activity label (from `y_train.txt`, `y_test.txt`)
            1. Measurements (from `X_train.txt`, `X_test.txt`)
        * Row order:
            1. Training data set
            1. Test data set
    * **Assignment task 2**: In `UCI_HAR_mean_std.txt`, the measurements on the mean and standard deviation for each measurement are extracted, utilizing the data features file `features.txt` (raw data set)
    * **Assignment task 3**: In `UCI_HAR_mean_std.txt`, the activities are named by descriptive names from `activity_labels.txt` (raw data set)
    * **Assignment task 4**: `UCI_HAR_mean_std.txt` is labelled with descriptive variable names. The measurements / features get labelled by `features.txt` (raw data set). The activities get the label `activity` and the subjects get the label `subject`. The measurement / feature labels are transformed as following:
        * `()` is removed
        * `-` is replaced by `.`
        * `fBodyBody` is replaced by `fBody` (typo error, see `features.txt` from raw data set)
    * **Assignment task 5**: From `UCI_HAR_mean_std.txt`, a second, independent tidy data set `UCI_HAR_averages.txt`, is created with the average of each variable for each `activity` and each `subject`
    * **Output**: Two tidy data sets `UCI_HAR_mean_std.txt` (mean and std) and `UCI_HAR_averages.txt` (averages of each variable for each activity and each subject)
