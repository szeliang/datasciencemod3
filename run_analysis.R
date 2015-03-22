#This script contains the function, run_analysis(), which is used to perform the project requirements.
#It also contains some helper functions used for unzipping, verifying, and cleaning up temporary files.



#These messages will be displayed when the script is sourced.
message("Hello.\n")
message("To begin, execute the function: run_analysis(\"yourfilename.zip\")\n")
message("Rename \"yourfilename.zip\" to the name of the zip file you downloaded for this course project.")
message("i.e. \"getdata-projectfiles-UCI HAR Dataset.zip\"\n")
message("This zip file should be placed in your working directory, unless you provide an absolute path to it.\n")
message("The output file is saved to your working directory as \"run_analysis_output.txt\"")
message("You can read the output file using read.table(\"run_analysis_output.txt\",header=TRUE)")
##



#The run_analysis() function takes the project zip file as input, and outputs the required tidy data to a txt file.
run_analysis <- function(fname = "./getdata-projectfiles-UCI HAR Dataset.zip") {
    
    #checking for zip file, and required files after unzipping
    if(!fopen(fname)) stop("Cannot find file: ", fname)
    
    req_files <- c("./tmpdata/UCI HAR Dataset/activity_labels.txt",
                   "./tmpdata/UCI HAR Dataset/features.txt",
                   "./tmpdata/UCI HAR Dataset/test/X_test.txt",
                   "./tmpdata/UCI HAR Dataset/test/y_test.txt",
                   "./tmpdata/UCI HAR Dataset/test/subject_test.txt",
                   "./tmpdata/UCI HAR Dataset/train/X_train.txt",
                   "./tmpdata/UCI HAR Dataset/train/y_train.txt",
                   "./tmpdata/UCI HAR Dataset/train/subject_train.txt")
    if (!fverify(req_files)) stop("Could not locate required data files. Zip file may be corrupted.")
    
    #read required files into memory
    act <- read.table(req_files[1],col.names=c("Activity_Code","Activity_Name"))
    feat <- read.table(req_files[2],col.names=c("VarNo","VarName"))
    act[,2] <- as.character(act[,2])
    feat[,2] <- as.character(feat[,2])
    
    #combine test and training data, also reduce the data set to measurements involving mean and std
    test_data <- read.table(req_files[3])
    train_data <- read.table(req_files[6])
    data <- rbind(test_data,train_data)
    names(data) <- feat[,2]
    data <- data[,grep("-mean|-std",names(data))]
    
    test_act <- read.table(req_files[4],col.names="Activity_Code")
    train_act <- read.table(req_files[7],col.names="Activity_Code")
    all_act <- rbind(test_act,train_act)
    
    test_sub <- read.table(req_files[5],col.names="Subject")
    train_sub <- read.table(req_files[8],col.names="Subject")
    all_sub <- rbind(test_sub,train_sub)
    
    #combine data with activity codes and subject codes
    data <- cbind(data,all_act,all_sub)
    
    #group data by activity and subject, also calculate mean of each measurements for each activity and each subject
    data2 <- split(data,list(data$Subject,data$Activity_Code))
    output <- sapply(data2[[1]],mean)
    if (length(data2) > 1) {
        for(i in 2:length(data2)) {
            tmp <- sapply(data2[[i]],mean)
            output <- rbind(output,tmp)
        }
    }
    
    #renaming of variable names to reflect that each data is now an average
    for(i in 1:length(colnames(output))) {
        tmp <- colnames(output)[i]
        if (tmp != "Activity_Code" && tmp != "Subject") colnames(output)[i] <- paste("Average",colnames(output)[i])
    }
    
    #renaming of activity codes to activity names
    output <- merge(output,act,by.x="Activity_Code",by.y="Activity_Code")
    output <- output[,-(which(names(output)=="Activity_Code"))]
    
    #writing new tidy data to output file
    write.table(output,"./run_analysis_output.txt",row.names=FALSE)

    #clean up temp folder and files unzipped. original zip file is not deleted.
    fclose()
}



##The fopen() function is used by the run_analysis() to unzip the source zip file
fopen <- function(fname = "nofile") {
    if (file.exists(fname)) {
        if (file.exists("./tmpdata")) unlink("./tmpdata",recursive=TRUE,force=TRUE)
        dir.create("./tmpdata")
        unzip(fname,exdir="./tmpdata")
        return(TRUE)
    }
    return(FALSE)
}



##The fverify() function is used by the run_analysis() to check that there are no missing files in the zip
fverify <- function(req_files = "") {    
    for (i in 1:length(req_files)) {
        if (!file.exists(req_files[i])) return(FALSE)
    }
    return(TRUE)
}



##The fclose() function is used by the run_analysis() to clean up temp folder after analysis is done
fclose <- function() {
    if (file.exists("./tmpdata")) unlink("./tmpdata",recursive=TRUE,force=TRUE)
}