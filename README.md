CleaningDataCourseProject README
================================

The script in this repository does the following:

* Reads in the feature labels from features.txt

* Reads in the subject id data for both the training and 
and test data (subject_train.txt, subject_test.txt).

* Reads in the activity id data for both the training and 
and test data (y_train.txt, y_test.txt).

* Reads in the feature data for both the training and 
and test data (X_train.txt, X_test.txt).

* Combines the subject, activity, and feature data
into one data frame.  Each observation represents
a row in the data frame.  Each column in the data
frame is labeled using descriptive text.

* Removes all columns except for the subject, activity,
and any features that contain a mean or std.

* Creates the second tidy data set from the first  The
second data set consists of the means of all of the columns
in the first data set, arranged by subect and activity.

* Replaces the activity codes with a description of the 
activity in both data sets.

* Saves the second data set to a file named tidy2.txt.


