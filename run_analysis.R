run_analysis <- function(){
        ## define paths
        main_path <- "./DCProject/UCI HAR Dataset/"
        tr_path <- "./DCProject/UCI HAR Dataset/train/"
        ts_path <- "./DCProject/UCI HAR Dataset/test/"
        
        ## load training sets
        train_x <- read.table(paste(tr_path, "X_train.txt", sep=""), header=FALSE)
        features <- read.table(paste(main_path, "features.txt", sep=""), header=FALSE)
        activity_l <- read.table(paste(main_path, "activity_labels.txt", sep=""), header=FALSE)
        train_subj <- read.table(paste(tr_path, "subject_train.txt", sep=""), header=FALSE)
        train_activ <- read.table(paste(tr_path, "y_train.txt", sep=""), header=FALSE)
        
        ## give names to variables of train_x
        train_labels <- features[, 2]
        named_train <- setNames(train_x, train_labels)
        
        ## merge the subject and activity data to named_train
        named_train$Subject <- train_subj
        named_train$Activity <- train_activ
        
        ## change Activity values to match activity labels
        #levels(named_train$Activity) <- activity_l[,2]
        
        ## sorry I had no time to finish the project :-S
}