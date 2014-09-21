run_analysis <- function(){
        ## load datasets
        main_path <- "./DCProject/UCI HAR Dataset/"
        tr_path <- "./DCProject/UCI HAR Dataset/train/"
        ts_path <- "./DCProject/UCI HAR Dataset/test/"
        train_x <- read.table(paste(tr_path, "X_train.txt", sep=""), header=FALSE)
        features <- read.table(paste(main_path, "features.txt", sep=""), header=FALSE)
}