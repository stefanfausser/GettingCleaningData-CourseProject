# Code Book

* This Code Book describes each variable and its units of the tidy data sets `UCI_HAR_mean_std.txt` (mean and std from) and `UCI_HAR_averages.txt` (averages of each variable for each activity and each subject), transformed from the UCI HAR data set

* For a description of the R script `run_analysis.R`, that cleans the data, see `README.md`

* The raw data can be obtained from:
    * Coursera: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
    * UCI: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Variables

* This section describes each variable, including features / measurements, identifier and labels, and its values

* In case of the tidy data set `UCI_HAR_averages.txt`, the values are the average over the variables for each `subject` and each `activity`, see `README.md`

* `subject` 1
    * Identifier of subject who carried out the experiment
        * 1..30 .Identifier
* `activity` 2
    * Activity label
        * LAYING .Laying
        * SITTING .Sitting
        * STANDING .Standing
        * WALKING .Walking
        * WALKING_DOWNSTAIRTS .Walking downstairs
        * WALKING_UPSTAIRS .Walking upstairs

* `tBodyAcc.mean.X` 3
    * Body acceleration signal, mean value, X direction
        * Continuous variable in [0,1]

* `tBodyAcc.mean.Y` 4
    * Body acceleration signal, mean value, Y direction
        * Continuous variable in [0,1]

* `tBodyAcc.mean.Z` 5
    * Body acceleration signal, mean value, Z direction
        * Continuous variable in [0,1]

* `tBodyAcc.std.X` 6
    * Body acceleration signal, standard deviation, X direction
        * Continuous variable in [0,1]

* `tBodyAcc.std.Y` 7
    * Body acceleration signal, standard deviation, Y direction
        * Continuous variable in [0,1]

* `tBodyAcc.std.Z` 8
    * Body acceleration signal, standard deviation, Z direction
        * Continuous variable in [0,1]

* `tGravityAcc.mean.X` 9
    * Gravity acceleration signal, mean value, X direction
        * Continuous variable in [0,1]

* `tGravityAcc.mean.Y` 10
    * Gravity acceleration signal, mean value, Y direction
        * Continuous variable in [0,1]

* `tGravityAcc.mean.Z` 11
    * Gravity acceleration signal, mean value, Z direction
        * Continuous variable in [0,1]

* `tGravityAcc.std.X` 12
    * Gravity acceleration signal, standard deviation, X direction
        * Continuous variable in [0,1]

* `tGravityAcc.std.Y` 13
    * Gravity acceleration signal, standard deviation, Y direction
        * Continuous variable in [0,1]

* `tGravityAcc.std.Z` 14
    * Gravity acceleration signal, standard deviation, Z direction
        * Continuous variable in [0,1]

* `tBodyAccJerk.mean.X` 15
    * Jerk signal from body acceleration, mean value, X direction
        * Continuous variable in [0,1]

* `tBodyAccJerk.mean.Y` 16
    * Jerk signal from body acceleration, mean value, Y direction
        * Continuous variable in [0,1]

* `tBodyAccJerk.mean.Z` 17
    * Jerk signal from body acceleration, mean value, Z direction
        * Continuous variable in [0,1]

* `tBodyAccJerk.std.X` 18
    * Jerk signal from body acceleration, standard deviation, X direction
        * Continuous variable in [0,1]

* `tBodyAccJerk.std.Y` 19
    * Jerk signal from body acceleration, standard deviation, Y direction
        * Continuous variable in [0,1]

* `tBodyAccJerk.std.Z` 20
    * Jerk signal from body acceleration, standard deviation, Z direction
        * Continuous variable in [0,1]

* `tBodyGyro.mean.X` 21
    * Body orientation, mean value, X direction
        * Continuous variable in [0,1]
    
* `tBodyGyro.mean.Y` 22
    * Body orientation, mean value, Y direction
        * Continuous variable in [0,1]

* `tBodyGyro.mean.Z` 23
    * Body orientation, mean value, Z direction
        * Continuous variable in [0,1]

* `tBodyGyro.std.X` 24
    * Body orientation, standard deviation, X direction
        * Continuous variable in [0,1]
    
* `tBodyGyro.std.Y` 25
    * Body orientation, standard deviation, Y direction
        * Continuous variable in [0,1]

* `tBodyGyro.std.Z` 26
    * Body orientation, standard deviation, Z direction
        * Continuous variable in [0,1]

* `tBodyGyroJerk.mean.X` 27
    * Jerk signal from body orientation, mean value, X direction
        * Continuous variable in [0,1]
    
* `tBodyGyroJerk.mean.Y` 28
    * Jerk signal from body orientation, mean value, Y direction
        * Continuous variable in [0,1]

* `tBodyGyroJerk.mean.Z` 29
    * Jerk signal from body orientation, mean value, Z direction
        * Continuous variable in [0,1]

* `tBodyGyroJerk.mean.X` 30
    * Jerk signal from body orientation, standard deviation, X direction
        * Continuous variable in [0,1]
    
* `tBodyGyroJerk.mean.Y` 31
    * Jerk signal from body orientation, standard deviation, Y direction
        * Continuous variable in [0,1]

* `tBodyGyroJerk.mean.Z` 32
    * Jerk signal from body orientation, standard deviation, Z direction
        * Continuous variable in [0,1]

* `tBodyAccMag.mean` 33
    * Magnitude of body accleration, mean value
        * Continuous variable in [0,1]

* `tBodyAccMag.std` 34
    * Magnitude of body accleration, standard deviation
        * Continuous variable in [0,1]

* `tGravityAccMag.mean` 35
    * Magnitude of gravity accleration, mean value
        * Continuous variable in [0,1]

* `tGravityAccMag.std` 36
    * Magnitude of gravity accleration, standard deviation
        * Continuous variable in [0,1]

* `tBodyAccJerkMag.mean` 37
    * Magnitude of jerk signal from body accleration, mean value
        * Continuous variable in [0,1]

* `tBodyAccJerkMag.std` 38
    * Magnitude of jerk signal from body accleration, standard deviation
        * Continuous variable in [0,1]

* `tBodyGyroMag.mean` 39
    * Magnitude of body orientation, mean value
        * Continuous variable in [0,1]

* `tBodyGyroMag.std` 40
    * Magnitude of body orientation, standard deviation
        * Continuous variable in [0,1]

* `tBodyGyroJerkMag.mean` 41
    * Magnitude of jerk signal from body orientation, mean value
        * Continuous variable in [0,1]

* `tBodyGyroJerkMag.std` 42
    * Magnitude of jerk signal from body orientation, standard deviation
        * Continuous variable in [0,1]

* `fBodyAcc.mean.X` 43
    * Fast-Fourier Transformation from body acceleration signal, mean value, X direction
        * Continuous variable in [0,1]

* `fBodyAcc.mean.Y` 44
    * Fast-Fourier Transformation from body acceleration signal, mean value, Y direction
        * Continuous variable in [0,1]

* `fBodyAcc.mean.Z` 45
    * Fast-Fourier Transformation from body acceleration signal, mean value, Z direction
        * Continuous variable in [0,1]

* `fBodyAcc.std.X` 46
    * Fast-Fourier Transformation from body acceleration signal, standard deviation, X direction
        * Continuous variable in [0,1]

* `fBodyAcc.std.Y` 47
    * Fast-Fourier Transformation from body acceleration signal, standard deviation, Y direction
        * Continuous variable in [0,1]

* `fBodyAcc.std.Z` 48
    * Fast-Fourier Transformation from body acceleration signal, standard deviation, Z direction
        * Continuous variable in [0,1]

* `fBodyAccJerk.mean.X` 49
    * Fast-Fourier Transformation from jerk signal from body acceleration, mean value, X direction
        * Continuous variable in [0,1]

* `fBodyAccJerk.mean.Y` 50
    * Fast-Fourier Transformation from jerk signal from body acceleration, mean value, Y direction
        * Continuous variable in [0,1]

* `fBodyAccJerk.mean.Z` 51
    * Fast-Fourier Transformation from jerk signal from body acceleration, mean value, Z direction
        * Continuous variable in [0,1]

* `fBodyAccJerk.std.X` 52
    * Fast-Fourier Transformation from jerk signal from body acceleration, standard deviation, X direction
        * Continuous variable in [0,1]

* `fBodyAccJerk.std.Y` 53
    * Fast-Fourier Transformation from jerk signal from body acceleration, standard deviation, Y direction
        * Continuous variable in [0,1]

* `fBodyAccJerk.std.Z` 54
    * Fast-Fourier Transformation from jerk signal from body acceleration, standard deviation, Z direction
        * Continuous variable in [0,1]

* `fBodyGyro.mean.X` 55
    * Fast-Fourier Transformation from body orientation, mean value, X direction
        * Continuous variable in [0,1]
    
* `fBodyGyro.mean.Y` 56
    * Fast-Fourier Transformation from body orientation, mean value, Y direction
        * Continuous variable in [0,1]

* `fBodyGyro.mean.Z` 57
    * Fast-Fourier Transformation from body orientation, mean value, Z direction
        * Continuous variable in [0,1]

* `fBodyGyro.std.X` 58
    * Fast-Fourier Transformation from body orientation, standard deviation, X direction
        * Continuous variable in [0,1]
    
* `fBodyGyro.std.Y` 59
    * Fast-Fourier Transformation from body orientation, standard deviation, Y direction
        * Continuous variable in [0,1]

* `fBodyGyro.std.Z` 60
    * Fast-Fourier Transformation from body orientation, standard deviation, Z direction
        * Continuous variable in [0,1]

* `fBodyAccMag.mean` 61
    * Fast-Fourier Transformation from magnitude of body accleration, mean value
        * Continuous variable in [0,1]

* `fBodyAccMag.std` 62
    * Fast-Fourier Transformation from magnitude of body accleration, standard deviation
        * Continuous variable in [0,1]

* `fBodyAccJerkMag.mean` 63
    * Fast-Fourier Transformation from magnitude of jerk signal from body accleration, mean value
        * Continuous variable in [0,1]

* `fBodyAccJerkMag.std` 64
    * Fast-Fourier Transformation from magnitude of jerk signal from body accleration, standard deviation
        * Continuous variable in [0,1]

* `fBodyGyroMag.mean` 65
    * Fast-Fourier Transformation from magnitude of body orientation, mean value
        * Continuous variable in [0,1]

* `fBodyGyroMag.std` 66
    * Fast-Fourier Transformation from magnitude of body orientation, standard deviation
        * Continuous variable in [0,1]

* `fBodyGyroJerkMag.mean` 67
    * Fast-Fourier Transformation from magnitude of jerk signal from body orientation, mean value
        * Continuous variable in [0,1]

* `fBodyGyroJerkMag.std` 68
    * Fast-Fourier Transformation from magnitude of jerk signal from body orientation, standard deviation
        * Continuous variable in [0,1]
