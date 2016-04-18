# Getting and Cleaning Data - Course Project

This repo contains my submission files for my course project :

* run_analysis.R
* CodeBook.md
* sumup.txt

###run_analysis.R

Is the script containing the code to apply to the data from measurements of the experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz you can download here :

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

in order to obtain average results for mean and standart deviation from this data grouped by subject and activity.

You previously have to download it in your working directory.
Then sourcing run_analisys.R previously downloaded in your working dorectory, you obtain sumup.txt. 

Be sure to have installed R-packages dplyr and magrittr.

### CodeBook.md
describes the variables, the data, and any transformations or work performed to clean up the data

### sumup.txt
Sum up average results for mean and standart deviation from the measurements data grouped by subject and activity.


Acknowledgements for the use of data : Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
