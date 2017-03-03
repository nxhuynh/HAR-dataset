# Processed HAR Dataset
This repo contains a version of the UCI HAR dataset as followed:
1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each 
	measurement.
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names.
5.	From the data set in step 4, creates a second, independent tidy data set 
	with the average of each variable for each activity and each subject.

### Files included:
* Dataset1.txt - result of step 1-4
* Dataset2.txt - result of step 5
* codebook.md - explanation of the features
* features.txt - full list of features
* README.md 
* run_analysis.R - the script to process the HAR dataset


More info about the original UCI HAR dataset can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

