library(data.table)
library(dplyr)

# 1. Merges the training and the test sets to create one data set.
x_train <- fread("UCI HAR Dataset/train/X_train.txt", colClasses = rep("numeric",561))
x_test <- fread("UCI HAR Dataset/test/X_test.txt", colClasses = rep("numeric",561))
x <- rbindlist(list(x_train, x_test))

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
f <- fread("UCI HAR Dataset/features.txt")
f1 <- grep("mean\\(\\)", f$V2)
f2 <- grep("std\\(\\)", f$V2)
dataset <- x[,sort(c(f1,f2)), with=FALSE]

# 3. Uses descriptive activity names to name the activities in the data set
y_train <- fread("UCI HAR Dataset/train/y_train.txt", colClasses = c("numeric"))
y_test <- fread("UCI HAR Dataset/test/y_test.txt", colClasses = c("numeric"))
activities <- fread("UCI HAR Dataset/activity_labels.txt")
y <- rbindlist(list(y_train, y_test))
labels <- factor(factor(y$V1), labels=activities$V2)

# 4. Appropriately labels the data set with descriptive variable names.
vnames <- f$V2[c(f1,f2)] %>% 
    gsub("^t", "Time Domain ", .) %>%
    gsub("^f", "Frequency Domain ", .) %>% 
    gsub("Acc"," Accelerometer", .) %>%
    gsub("Gyro"," Gyroscope", .) %>% 
    gsub("Jerk"," Jerk", .) %>% 
    gsub("Mag"," Magnitude", .) %>% 
    gsub("-mean\\(\\)", " Mean", .) %>%
    gsub("-meanFreq\\(\\)", " Mean", .) %>%
    gsub("-std\\(\\)", " Standard Deviation", .) %>% 
    gsub("-([X-Z])"," \\1", .)

colnames(dataset) <- vnames

# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.
subjects_train <- fread("UCI HAR Dataset/train/subject_train.txt")
subjects_test <- fread("UCI HAR Dataset/test/subject_test.txt")
subjects <- rbindlist(list(subjects_train, subjects_test))$V1
features <- names(dataset)
dataset$Subject <- subjects
dataset$Activity <- labels
ds2 <- expand.grid(unique(subjects), unique(labels))
names(ds2) <- c("Subject", "Activity")
for (j in 1:length(features)){
    col_buf = numeric(nrow(ds2))
    for (i in 1:nrow(ds2)){
        row = (dataset$Subject == ds2[i,1]) & (dataset$Activity == ds2[i,2])
        datapt = colMeans(dataset[row, j, with=FALSE])
        col_buf[i] <- datapt
    }
    ds2[[features[j]]] <- col_buf
}

write.table(dataset, "Dataset1.txt", row.names=FALSE)
write.table(ds2, "Dataset2.txt", row.names=FALSE)