# location of the data files
# this path is relative to the current working directory in r
rootPath <- "./UCI HAR Dataset/"

# returns the path to the subject observations file
# the mode argument should be either "test" or "train"
subjectFile <- function(mode)
{
    tmp <- paste(rootPath, mode, "/", sep = "")
    paste(tmp, "subject_", mode, ".txt", sep = "")
}

# returns the path to the activity file
# the mode argument should be either "test" or "train"
activityFile <- function(mode)
{
    tmp <- paste(rootPath, mode, "/", sep = "")
    paste(tmp, "y_", mode, ".txt", sep = "")
}

# returns the path to the feature file
# the mode argument should be either "test" or "train"
featureFile <- function(mode)
{
    tmp <- paste(rootPath, mode, "/", sep = "")
    paste(tmp, "X_", mode, ".txt", sep = "")
}

# returns the path to the feature lables file
featureLabelFile <- function()
{
    paste(rootPath, "features.txt", sep="")
}

# read in the feature labels...
featureLabels <- read.table(featureLabelFile(), "?", sep = " ", header = FALSE, stringsAsFactors = FALSE)
featureLabels <- as.character(featureLabels$V2)

# read in the subject obsrvation data...
datSubject <- 
    as.numeric(scan(file = subjectFile("train"), what = "integer"))
datSubject <- c(datSubject, 
    as.numeric(scan(file = subjectFile("test"), what = "integer")))

# read in the activity data...
datActivity <-
    as.numeric(scan(file = activityFile("train"), what = "integer"))
datActivity <- c(datActivity, 
    as.numeric(scan(file = activityFile("test"), what = "integer")))

# read in the feature data...
datFeatures <-
    as.numeric(scan(file = featureFile("train"), what = "integer"))
datFeatures <- c(datFeatures, 
                 as.numeric(scan(file = featureFile("test"), what = "integer")))

# create a row for each observation, this row contains
# the subject, activity, and all of the features that were recorded...
chunk <- 561
start <- 1
end <- chunk
rows <- list()
for (r in 1:length(datSubject))
{
    print(start)
    print(end)
    rows[[r]] <- c(datSubject[r], datActivity[r], datFeatures[start:end])
    start = start + chunk
    end = start + chunk - 1
}

# build a data frame that initially just contains a column to hold
# the subject and the activity they were performing...
tidy <- data.frame(subject = numeric(10299), activity = numeric(10299))

# now we bind more columns, one for each feature that was recorded
# initially these will contain NA, but we will add the data later...
for (i in 1:length(featureLabels))
{
    print(i)
    tidy[paste(featureLabels[i], i, sep="_")] <- NA
}

# OK, now we add the data, one row at a time...
for (i in 1:length(datSubject))
{
    print(i)
    tidy[i,] <- rows[[i]]
}

# time to remove all columns except for the subject, activity,
# and any features that contain a mean or std...
tidy <- tidy[, grep("mean|std|subject|activity", names(tidy) )] 

# create the second tidy data set...
for (s in 1:30)
{
    for (a in 1:6)
    {
        print(s)
        print(a)
        if (s == 1 & a == 1)
        {            
            tidy2 <- colMeans((subset(tidy, tidy[1] == 1 & tidy[2] == 1)))
        }
        else
        {
            tidy2 <- rbind(tidy2, colMeans((subset(tidy, tidy[1] == s & tidy[2] == a))))
        }
    }
}
tidy2 <- as.data.frame(tidy2)

# finally, we can replace the activity codes with a description
# of the activity...
tidy$activity[tidy$activity == 1] = "WALKING"
tidy$activity[tidy$activity == 2] = "WALKING_UPSTAIRS"
tidy$activity[tidy$activity == 3] = "WALKING_DOWNSTAIRS"
tidy$activity[tidy$activity == 4] = "SITTING"
tidy$activity[tidy$activity == 5] = "STANDING"
tidy$activity[tidy$activity == 6] = "LAYING"
tidy2$activity[tidy2$activity == 1] = "WALKING"
tidy2$activity[tidy2$activity == 2] = "WALKING_UPSTAIRS"
tidy2$activity[tidy2$activity == 3] = "WALKING_DOWNSTAIRS"
tidy2$activity[tidy2$activity == 4] = "SITTING"
tidy2$activity[tidy2$activity == 5] = "STANDING"
tidy2$activity[tidy2$activity == 6] = "LAYING"

# save the second tidy data set to a text file... 
write.table(tidy2, "tidy2.txt", row.names = FALSE)

