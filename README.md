# How the run_analysis.R script works.

## NOTE:
> Be sure the data top level data directory and this script are in the same directory.

##  Steps of the script:
### Read in data and create data frame

The script reads in the data from the following files:
> subject_*.txt
> Y_*.txt
> X_*.txt

Next it creates the dataframe by column binding the subject, activity (Y) measure (X).

## Combine data frames

Next the script combines the training and the test sets to create one data set by row binding.

## Label data set with descriptive variable names.     

The script then labels the column of the combined dataframe using the features_info.txt file.

## Extract only the columns of the mean & std for each measurement.

The column names are searched to see if they include either the text "-mean()" or "-std()".

The given columns are extracted into a data frame, df.extracted.

## Use descriptive names for the activities in the data set

The activity codes are translated into activity labels as specified in the file, "activity_labels.txt"

## Save file

Now that the tidy data set has been created, it is save as a text file using the function, write.table().
                
                
##5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.

Then for each subject-activity combination, the script finds the mean for each of the measures.
        