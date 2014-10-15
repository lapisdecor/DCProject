# Script requires the packages: dplyr

run_analysis <- function(){
        ## define paths
        main_path <- "./DCProject/UCI HAR Dataset/"
        tr_path <- "./DCProject/UCI HAR Dataset/train/"
        ts_path <- "./DCProject/UCI HAR Dataset/test/"
        
        ## load main sets
        features <- read.table(paste(main_path, "features.txt", sep=""), header=FALSE)
        activity_l <- read.table(paste(main_path, "activity_labels.txt", sep=""), header=FALSE)
        
        ## load training sets
        train_x <- read.table(paste(tr_path, "X_train.txt", sep=""), header=FALSE)
        train_subj <- read.table(paste(tr_path, "subject_train.txt", sep=""), header=FALSE)
        train_activ <- read.table(paste(tr_path, "y_train.txt", sep=""), header=FALSE)
        
        ## load test sets
        test_x <- read.table(paste(ts_path, "X_test.txt", sep=""), header=FALSE)
        test_subj <- read.table(paste(ts_path, "subject_test.txt", sep=""), header=FALSE)
        test_activ <- read.table(paste(ts_path, "y_test.txt", sep=""), header=FALSE)
        
        ## remove unused variables
        rm("main_path", "tr_path", "ts_path")
        
        ## add train_x to test_x and remove unused sets
        x <- rbind(train_x, test_x)
        rm("train_x", "test_x")
        
        ## add train_activ to test_activ and remove unused sets
        activ <- rbind(train_activ, test_activ)
        rm("train_activ", "test_activ")
        
        ## add train_subj to test_subj and remove unused sets
        subj <- rbind(train_subj, test_subj)
        rm("train_subj", "test_subj")
        
        ## give names to variables of x
        #labels <- features[, 2]
        x <- setNames(x, features[, 2])
        
        ## merge the subject and activity data to x
        ######################### this is wrong!!!
        x$subject <- subj[,1]
        x$activity <- activ[,1]
        
        ## change Activity values to match activity labels
        x$activity[x$activity == 1] <- "WALKING"
        x$activity[x$activity == 2] <- "WALKING_UPSTAIRS"
        x$activity[x$activity == 3] <- "WALKING_DOWNSTAIRS"
        x$activity[x$activity == 4] <- "SITTING"
        x$activity[x$activity == 5] <- "STANDING"
        x$activity[x$activity == 6] <- "LAYING"
        
        ## extracts only the measurements on the mean and standard deviation
        ## for each measurement
        names_to_filter <- grep("mean|std|subject|activity", names(x), value = T)
        x <- x[,names_to_filter]
        
        ## appropriately labels the data set with descriptive variable names
        
        # set variable names to lower case
        names(x) <- tolower(names(x))
        
        # remove the parentesis from variable names
        names(x) <- sub("\\(\\)", "", names(x))
        
        # rename t to time and f to fastfourier in variable names
        names(x) <- sub("^t", "time_", names(x))
        names(x) <- sub("^f", "fastfourier_", names(x))
        
        # replace hyphens for underscores in variable names
        names(x) <- gsub("-", "_", names(x))
        
        # replace bodybody for simply body
        names(x) <- gsub("bodybody", "body", names(x))
        
        ## create a second, independent tidy data set with the average
        ## of each variable for each activity and each subject.
        
        # load dplyr and remove unused variables
        library(dplyr)
        new_data <- tbl_df(x)
        rm("activ", "activity_l", "features", "subj", "names_to_filter", "x")
        
        # group data by subject and activity
        groupedData <- group_by(new_data, subject, activity)
        
        # reorganize the order of the columns
        selData <- select(groupedData, subject, activity, time_bodyacc_mean_x:fastfourier_bodygyrojerkmag_meanfreq)
        
        # calculate the mean for each activity and each subject
        tidy2 <- summarise_each(selData, funs(mean))
        
        ## write data to a file
        write.table(tidy2, file="./DCProject/tidysamsung.txt", row.names=F)
        
        
        
}