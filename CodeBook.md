## CodeBook

# run_analysis.R description

Script:

	1. Gets data from Samsung folder.
	2. Creates 1 data set including all subjects, all activities and all variables from test and train sets.
	3. Choose appropriate variables from general data set and creates data set "clear".
	4. Creates data set with the average of each variable for each activity and each subject  and writes this data into "Data.txt".

#Variables

X, Y, Z: the axis of X, Y and Z (signals can be in the X, Y and Z directions)

t (at the beginning of the variable names): time domain signals

f (at the beginning of the variable names): frequency domain signals

mean: Mean value

std: Standard deviation

meanFreq: Weighted average of the frequency components to obtain a mean

frequency

angle: Angle between to vectors

Acc: Acceleration signal from the smartphone accelerometer (sensor signal).

Gyr: Angular velocity from the smartphone gyroscope (sensor signal).

Body: The signals related to the body of subject (individual) who has been examined.

Jerk: Jerk signals (the body linear acceleration and angular velocity were derived in
time to reach this signal)

Mag: magnitude of the three-dimensional signals calculated using the Euclidean norm

Gravity: The signals related to the gravity.

Subject: The numbers between 1 to 30 which are identifiers of the subjects
(individuals) who carried out the experiment.

Activity: The numbers between 1 to 6 which are identifiers of the activities

Activity_Name: including 6 activities performed by subjects (STANDING, SITTING,
LAYING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)

Variables with mean measurements:

tBodyAccmeanX

tBodyAccmeanY

tBodyAccmeanZ

tGravityAccmeanX

tGravityAccmeanY

tGravityAccmeanZ

tBodyAccJerkmeanX

tBodyAccJerkmeanY

tBodyAccJerkmeanZ

tBodyGyromeanX

tBodyGyromeanY

tBodyGyromeanZ

tBodyGyroJerkmeanX

tBodyGyroJerkmeanY  tBodyGyroJerkmeanZ

tBodyAccMagmean

tGravityAccMagmean

tBodyAccJerkMagmean

tBodyGyroMagmean

tBodyGyroJerkMagmean

fBodyAccmeanX

fBodyAccmeanY

fBodyAccmeanZ

fBodyAccmeanFreqX

fBodyAccmeanFreqY

fBodyAccmeanFreqZ

fBodyAccJerkmeanX

fBodyAccJerkmeanY

fBodyAccJerkmeanZ

fBodyAccJerkmeanFreqX

fBodyAccJerkmeanFreqY

fBodyAccJerkmeanFreqZ

fBodyGyromeanX

fBodyGyromeanY

fBodyGyromeanZ

fBodyGyromeanFreqX

fBodyGyromeanFreqY

fBodyGyromeanFreqZ

fBodyAccMagmean

fBodyAccMagmeanFreq

fBodyBodyAccJerkMagmean

fBodyBodyAccJerkMagmeanFreq

fBodyBodyGyroMagmean

fBodyBodyGyroMagmeanFreq

fBodyBodyGyroJerkMagmean

fBodyBodyGyroJerkMagmeanFreq

angletBodyAccMeangravity

angletBodyAccJerkMeangravityMean

angletBodyGyroMeangravityMean

angletBodyGyroJerkMeangravityMean

angleXgravityMean

angleYgravityMean

angleZgravityMean Variables with standard deviation (std) measurements:

tBodyAccstdX

tBodyAccstdY

tBodyAccstdZ

tGravityAccstdX

tGravityAccstdY

tGravityAccstdZ

tBodyAccJerkstdX

tBodyAccJerkstdY

tBodyAccJerkstdZ

tBodyGyrostdX

tBodyGyrostdY

tBodyGyrostdZ

tBodyGyroJerkstdX

tBodyGyroJerkstdY

tBodyGyroJerkstdZ

tBodyAccMagstd

tGravityAccMagstd

tBodyAccJerkMagstd

tBodyGyroMagstd

tBodyGyroJerkMagstd

fBodyAccstdX

fBodyAccstdY

fBodyAccstdZ

fBodyAccJerkstdX

fBodyAccJerkstdY

fBodyAccJerkstdZ

fBodyGyrostdX

fBodyGyrostdY

fBodyGyrostdZ

fBodyAccMagstd

fBodyBodyAccJerkMagstd

fBodyBodyGyroMagstd

fBodyBodyGyroJerkMagstdData set and transformations
