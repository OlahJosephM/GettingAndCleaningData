run_analysis <- function() {
        ##  Read in data and create data frame for test & training.
        subject_test  <- read.table("./UCI HAR Dataset/test/subject_test.txt")
        activity_test <- read.table("./UCI HAR Dataset/test/y_test.txt"      )
        data_test     <- read.table("./UCI HAR Dataset/test/X_test.txt"      )
        df.test <- cbind(subject_test, activity_test, data_test)
        
        subject_train  <- read.table("./UCI HAR Dataset/train/subject_train.txt")
        activity_train <- read.table("./UCI HAR Dataset/train/y_train.txt"      )
        data_train     <- read.table("./UCI HAR Dataset/train/X_train.txt"      )
        df.train <- cbind(subject_train, activity_train, data_train)
        
        features <- read.table("./UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)
        featureNames <- features[,2]
        
        
        ##1. Combine the training and the test sets to create one data set.
        df.whole <- rbind(df.test, df.train)
        
        
        ##4. Appropriately label the data set with descriptive variable names.         
        columnLabels <- c("subject", "activity", colnames(features))
        colnames(df.whole) <- columnLabels
                
        
        ##2. Extract only the columns of the mean & std for each measurement.
        meanStdCols <- grep('mean\\(\\)|std\\(\\)',columnLabels)
        extractCols <- columnLabels[c(1,2,meanStdCols)]
        df.extract <- df.whole[,extractCols]
        
        
        ##3. Use descriptive names for the activities in the data set
        activities <- df.extract[,"activity"]
        subActivities <- sub("1", "WALKING"           ,    activities)
        subActivities <- sub("2", "WALKING_UPSTAIRS"  , subActivities)
        subActivities <- sub("3", "WALKING_DOWNSTAIRS", subActivities)
        subActivities <- sub("4", "SITTING"           , subActivities)
        subActivities <- sub("5", "STANDING"          , subActivities)
        subActivities <- sub("6", "LAYING"            , subActivities) 
        
        df.extract[,2] <- subActivities
        
        write.table(df.extract,file="TidyDataSet")
                
        
        ##5. Create a second, independent tidy data set with 
        ##        the average of each variable for each activity and each subject. 
        
}
