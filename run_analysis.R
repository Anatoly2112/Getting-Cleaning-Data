library(data.table)
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
names(activity_labels) = c("Activity", "Activity_Name")
 
# Collumn on subjects 

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Collumn on activities

y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

# Data sets on train and test

X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")

# Full sets on train and test

clues_train <- cbind(subject_train, y_train)
clues_test <- cbind(subject_test, y_test)

fullset_train <- cbind(clues_train, X_train)
fullset_test <- cbind(clues_test, X_test)

## "1. Merges the training and the test sets to create one data set."

fullset <- rbind(fullset_train, fullset_test)

# Names of collumns of fullset
names(fullset)[1:2] <- c("Subject", "Activity")
names(fullset)[3:563] = as.character(features[,2])

## "2. Extracts only the measurements on the mean and standard deviation for each measurement."

appr_features <- as.character(features[which(grepl("mean[:(:]|std", as.character(features[,2]))),2])

# Fullset with the aprropriate features

col <- names(fullset)[1:2]
col[3:(2+length(appr_features))] <- appr_features
appr_fullset <- fullset[,col]

## "3. Uses descriptive activity names to name the activities in the data set"

clear <- merge(activity_labels, appr_fullset)

## "4. Appropriately labels the data set with descriptive variable names."
## Step 4 is already completed as you can see

## "5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject."

dt <- data.table(clear)
Data<- dt[, lapply(.SD, mean), by=c("Subject", "Activity", "Activity_Name")]
Data<- Data[order(Data$Subject),]

write.table(Data, "Data.txt", sep="\t", row.name=FALSE)