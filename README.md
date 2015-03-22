# Course Project for Data Science Module 3

The R script (run_analysis.R) contains the run_analysis() function which should be used to perform the required tasks for this course project.

Upon sourcing the script, execute run_analysis("project_zip_file.zip").
The function may take a while to run, please let it complete.
When it is done, an output file called "run_analysis_output.txt" containing the required tidy data can be found in your working directory.

If you wish, you can read the output file back into R by using read.table("run_analysis_output.txt",header=TRUE).


## Overview of what the run_analysis() function does

When executed, the function performs the following actions on the original data in the zip file
* Checks if zip file exists, unzips it to a temp folder, and verifies that required data files are present
* Reads the required files into data.frames
* Uses rbind to combine the test and training data sets
* Retains only the columns (measurements) related to mean and std
* Uses cbind to combine the measurement data with subject and activity data
* Splits the overall data into a list of data.frames, grouped by subject and activity
* Computes the mean of each measurement for each subject and each activity, and writes it to a new data.frame
* Updates variable names to indicate they are now averages, and convert activity codes to names 
* Write the new tidy data to output file
Please refer to code itself, and comments within the code, for more details.

## Other matters

There are three other functions in the R script which are called by run_analysis() to unzip, verify and clean up files.
There is no need to execute them manually.
