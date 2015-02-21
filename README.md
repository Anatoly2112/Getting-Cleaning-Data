# ReadMe

This folder is a submission of the Course Project on Coursera's "Getting and Cleaning Data". Folder includes 4 files:

-- run_analysis.R: R script that is designed to transform Samsung-data in proper format

-- Data.txt: tidy data set created in step 5 of the instructions

-- CodeBook: description of variables and script

-- ReadMe.md

# run_analysis.R description

Script:

	1. Gets data from Samsung folder.
	2. Creates 1 data set including all subjects, all activities and all variables from test and train sets.
	3. Choose appropriate variables from general data set and creates data set "clear".
	4. Creates data set with the average of each variable for each activity and each subject  and writes this data into "Data.txt".
