# Open necessary libraries.
library(dplyr)


###
### Step 1 "Merges the training and the test sets to create one data set."
###

#Download and unzip the data.
zip_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(zip_url, destfile = "cpz.zip", method = "curl")
unzip("cpz.zip")

# Now study the README.txt file and manually examine the folders and files in
# order to understand the structure and content of the dataset. Then load and
# put together the relevant files.

variable_names <- read.table(file = "UCI HAR Dataset/features.txt", stringsAsFactors = F)

test_subjects <- read.table(file = "UCI HAR Dataset/test/subject_test.txt")
test_activity_labels <- read.table(file = "UCI HAR Dataset/test/y_test.txt")
test_set <- read.table(file = "UCI HAR Dataset/test/X_test.txt")
# Put together the test data
test_data <- cbind(test_subjects, set = "test", test_activity_labels, test_set)

train_subjects <- read.table(file = "UCI HAR Dataset/train/subject_train.txt")
train_activity_labels <- read.table(file = "UCI HAR Dataset/train/y_train.txt")
train_set <- read.table(file = "UCI HAR Dataset/train/X_train.txt")
# Put together the train data
train_data <- cbind(train_subjects, set = "train", train_activity_labels, train_set)

# Put together the test and train data and add the variable names.
data <- tbl_df(rbind(test_data, train_data))
names(data)  <- c("subject", "set", "activity", variable_names$V2)


###
### Step 2 "Extracts only the measurements on the mean and standard deviation
### for each measurement."
###
req_cols <- grep("-mean()|-std()", x = names(data), value = T)
data <- data[ ,c("subject", "set", "activity", req_cols)]


###
### Step 3 "Uses descriptive activity names to name the activities in the data
### set."
###
activity_labels <- read.table(file = "UCI HAR Dataset/activity_labels.txt")
data$activity <- as.factor(data$activity)
levels(data$activity) <- activity_labels$V2

###
### Step 4 "Appropriately labels the data set with descriptive variable names."
###
### Frankly, I believe this process is largely unnecessary, as the variable
### names are already lengthy and complex while at the same time being
### informative and interpretable. Thus, I have made minor cosmetic changes and
### refer the user to the "Codebook.md" for details and further information. Oh
### well, here goes nothing...
names_orig <- names(data)
names_temp <- names(data)

# names_temp <- tolower(names(data))
names_temp <- gsub(pattern = "^t", replacement = "time", x = names_temp)
names_temp <- gsub(pattern = "^f", replacement = "freq", x = names_temp)
names_temp <- gsub(pattern = "(\\(.*\\))", replacement = "", x = names_temp)
names_temp <- gsub(pattern = "-", replacement = "", x = names_temp)
names_temp <- gsub(pattern = "acc", replacement = "accel", x = names_temp)
names_temp <- gsub(pattern = "mean", replacement = "Mean", x = names_temp)
names_temp <- gsub(pattern = "std", replacement = "Std", x = names_temp)
names(data) <- names_temp


### Step 5 "From the data set in step 4, creates a second, independent tidy data
### set with the average of each variable for each activity and each subject."

# # scratch work
# names_summ <- paste("mean", names_temp, " = mean(", names_temp, "),", sep = "")
# write.csv(names_summ, file = "names.csv", row.names = F)
# write.csv(names_temp, file = "names.csv", row.names = F)
# # adjust in text editor

# Calculate mean of each variable for each activity and subject.
data <- data %>%
     group_by(activity, subject, set) %>%
     summarise(meantimeBodyAccMeanX = mean(timeBodyAccMeanX),
               meantimeBodyAccMeanY = mean(timeBodyAccMeanY),
               meantimeBodyAccMeanZ = mean(timeBodyAccMeanZ),
               meantimeBodyAccStdX = mean(timeBodyAccStdX),
               meantimeBodyAccStdY = mean(timeBodyAccStdY),
               meantimeBodyAccStdZ = mean(timeBodyAccStdZ),
               meantimeGravityAccMeanX = mean(timeGravityAccMeanX),
               meantimeGravityAccMeanY = mean(timeGravityAccMeanY),
               meantimeGravityAccMeanZ = mean(timeGravityAccMeanZ),
               meantimeGravityAccStdX = mean(timeGravityAccStdX),
               meantimeGravityAccStdY = mean(timeGravityAccStdY),
               meantimeGravityAccStdZ = mean(timeGravityAccStdZ),
               meantimeBodyAccJerkMeanX = mean(timeBodyAccJerkMeanX),
               meantimeBodyAccJerkMeanY = mean(timeBodyAccJerkMeanY),
               meantimeBodyAccJerkMeanZ = mean(timeBodyAccJerkMeanZ),
               meantimeBodyAccJerkStdX = mean(timeBodyAccJerkStdX),
               meantimeBodyAccJerkStdY = mean(timeBodyAccJerkStdY),
               meantimeBodyAccJerkStdZ = mean(timeBodyAccJerkStdZ),
               meantimeBodyGyroMeanX = mean(timeBodyGyroMeanX),
               meantimeBodyGyroMeanY = mean(timeBodyGyroMeanY),
               meantimeBodyGyroMeanZ = mean(timeBodyGyroMeanZ),
               meantimeBodyGyroStdX = mean(timeBodyGyroStdX),
               meantimeBodyGyroStdY = mean(timeBodyGyroStdY),
               meantimeBodyGyroStdZ = mean(timeBodyGyroStdZ),
               meantimeBodyGyroJerkMeanX = mean(timeBodyGyroJerkMeanX),
               meantimeBodyGyroJerkMeanY = mean(timeBodyGyroJerkMeanY),
               meantimeBodyGyroJerkMeanZ = mean(timeBodyGyroJerkMeanZ),
               meantimeBodyGyroJerkStdX = mean(timeBodyGyroJerkStdX),
               meantimeBodyGyroJerkStdY = mean(timeBodyGyroJerkStdY),
               meantimeBodyGyroJerkStdZ = mean(timeBodyGyroJerkStdZ),
               meantimeBodyAccMagMean = mean(timeBodyAccMagMean),
               meantimeBodyAccMagStd = mean(timeBodyAccMagStd),
               meantimeGravityAccMagMean = mean(timeGravityAccMagMean),
               meantimeGravityAccMagStd = mean(timeGravityAccMagStd),
               meantimeBodyAccJerkMagMean = mean(timeBodyAccJerkMagMean),
               meantimeBodyAccJerkMagStd = mean(timeBodyAccJerkMagStd),
               meantimeBodyGyroMagMean = mean(timeBodyGyroMagMean),
               meantimeBodyGyroMagStd = mean(timeBodyGyroMagStd),
               meantimeBodyGyroJerkMagMean = mean(timeBodyGyroJerkMagMean),
               meantimeBodyGyroJerkMagStd = mean(timeBodyGyroJerkMagStd),
               meanfreqBodyAccMeanX = mean(freqBodyAccMeanX),
               meanfreqBodyAccMeanY = mean(freqBodyAccMeanY),
               meanfreqBodyAccMeanZ = mean(freqBodyAccMeanZ),
               meanfreqBodyAccStdX = mean(freqBodyAccStdX),
               meanfreqBodyAccStdY = mean(freqBodyAccStdY),
               meanfreqBodyAccStdZ = mean(freqBodyAccStdZ),
               meanfreqBodyAccMeanFreqX = mean(freqBodyAccMeanFreqX),
               meanfreqBodyAccMeanFreqY = mean(freqBodyAccMeanFreqY),
               meanfreqBodyAccMeanFreqZ = mean(freqBodyAccMeanFreqZ),
               meanfreqBodyAccJerkMeanX = mean(freqBodyAccJerkMeanX),
               meanfreqBodyAccJerkMeanY = mean(freqBodyAccJerkMeanY),
               meanfreqBodyAccJerkMeanZ = mean(freqBodyAccJerkMeanZ),
               meanfreqBodyAccJerkStdX = mean(freqBodyAccJerkStdX),
               meanfreqBodyAccJerkStdY = mean(freqBodyAccJerkStdY),
               meanfreqBodyAccJerkStdZ = mean(freqBodyAccJerkStdZ),
               meanfreqBodyAccJerkMeanFreqX = mean(freqBodyAccJerkMeanFreqX),
               meanfreqBodyAccJerkMeanFreqY = mean(freqBodyAccJerkMeanFreqY),
               meanfreqBodyAccJerkMeanFreqZ = mean(freqBodyAccJerkMeanFreqZ),
               meanfreqBodyGyroMeanX = mean(freqBodyGyroMeanX),
               meanfreqBodyGyroMeanY = mean(freqBodyGyroMeanY),
               meanfreqBodyGyroMeanZ = mean(freqBodyGyroMeanZ),
               meanfreqBodyGyroStdX = mean(freqBodyGyroStdX),
               meanfreqBodyGyroStdY = mean(freqBodyGyroStdY),
               meanfreqBodyGyroStdZ = mean(freqBodyGyroStdZ),
               meanfreqBodyGyroMeanFreqX = mean(freqBodyGyroMeanFreqX),
               meanfreqBodyGyroMeanFreqY = mean(freqBodyGyroMeanFreqY),
               meanfreqBodyGyroMeanFreqZ = mean(freqBodyGyroMeanFreqZ),
               meanfreqBodyAccMagMean = mean(freqBodyAccMagMean),
               meanfreqBodyAccMagStd = mean(freqBodyAccMagStd),
               meanfreqBodyAccMagMeanFreq = mean(freqBodyAccMagMeanFreq),
               meanfreqBodyBodyAccJerkMagMean = mean(freqBodyBodyAccJerkMagMean),
               meanfreqBodyBodyAccJerkMagStd = mean(freqBodyBodyAccJerkMagStd),
               meanfreqBodyBodyAccJerkMagMeanFreq = mean(freqBodyBodyAccJerkMagMeanFreq),
               meanfreqBodyBodyGyroMagMean = mean(freqBodyBodyGyroMagMean),
               meanfreqBodyBodyGyroMagStd = mean(freqBodyBodyGyroMagStd),
               meanfreqBodyBodyGyroMagMeanFreq = mean(freqBodyBodyGyroMagMeanFreq),
               meanfreqBodyBodyGyroJerkMagMean = mean(freqBodyBodyGyroJerkMagMean),
               meanfreqBodyBodyGyroJerkMagStd = mean(freqBodyBodyGyroJerkMagStd),
               meanfreqBodyBodyGyroJerkMagMeanFreq = mean(freqBodyBodyGyroJerkMagMeanFreq),
               n = n()
               )

write.table(x = data, file = "PhoneMovementMeasures.txt", row.names = FALSE)
