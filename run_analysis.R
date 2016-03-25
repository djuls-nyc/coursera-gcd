
#######################
# LOAD RELEVANT FILES #
#######################

library(data.table) # fread much faster to read big datafiles

path <- "UCI HAR Dataset/"
train <- fread(paste(path,"train/X_train.txt", sep=""))
ytrain <- fread(paste(path,"train/Y_train.txt", sep=""))
strain <- fread(paste(path,"train/subject_train.txt", sep=""))
test  <- fread(paste(path,"test/X_test.txt"  , sep=""))
ytest <- fread(paste(path,"test/Y_test.txt"  , sep=""))
stest <- fread(paste(path,"test/subject_test.txt", sep=""))

##########################################
# MERGE EVERYTHING IN A SINGLE DATAFRAME #
##########################################

data <- as.data.frame(rbind(cbind(train,ytrain, strain), 
                            cbind(test,ytest, stest)))

###################################
# BASIC WORK AROUND FEATURE NAMES #
###################################

# Load Features Names, add missing and apply to data
featNames <- unlist(fread(paste(path,"features.txt", sep=""), select=2))
featNames <- c(featNames, "Activity", "Subject")
names(data) <- featNames

# Load Activity labels and apply to data
a_labels <- fread(paste(path,"activity_labels.txt", sep=""))[[2]]
data$Activity <- factor(data$Activity, labels=a_labels)

#################################
# EXTRACT DATA WITH MEAN OR STD #
#################################

# Split feature names to get mean(), std() or none
featTypes <- unlist(lapply(featNames, 
                    function(s) strsplit(s, split = "-")[[1]][2]))
featTypes[is.na(featTypes)] <- "none"


# Selection of the relevant mean/std features
dataExtract <- data[, featTypes=="mean()" | featTypes=="std()" ]

# Insert Subject and Activity (in first columns)
dataExtract <- cbind(Activity=data$Activity, Subject=data$Subject, 
                     dataExtract)

#########################################
# CREATE MORE DESCRIPTIVE FEATURE NAMES #
#########################################

# Strings to search and replace
toFind <- c("mean", "std", "^t","^f",
            "Acc","Gyro","Mag", "-", "\\(\\)")
toReplace <- c("Mean", "Std", "time", "frequency", 
               "Accelerometer", "Gyroscope", "Magnitude", "", "")

# Function to apply on a single string
cleanNames <- function(s) {
  for (i in 1:length(toFind)) {
    s <- gsub(toFind[i], toReplace[i], s)
  }
  return(s)
}

# Apply function to all the feature names
names(dataExtract) <- as.vector(sapply(names(dataExtract), cleanNames))

###############################
# CREATE AND SAVE NEW DATASET #
###############################

# Another way :
# library(dplyr)
# tidy_data <-
#   dataExtract %>%
#       tbl_df %>%
#        group_by(Subject, Activity) %>%
#          summarize_each(funs(mean))

tidyData <- aggregate(.~Subject+Activity, dataExtract, mean)

write.table(tidyData, "tidyData.txt", row.name=FALSE)
