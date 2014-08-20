CleaningDataCourseProject Code Book
===================================

This code book describes the two tidy data sets created for the 
Getting and Cleaning Data course.  Both data sets were created
from the data in the UCI HAR Dataset.  For additional information
about the UCI HAR Dataset please consult the README.txt file,
features.txt file, and the features_info.txt file distributed with 
the UCI HAR Dataset.  You may also want to visit www.smartlab.ws.

Data Set 1 (aka tidy)
=====================

Each row in this data contains sensor readings taken by a smartphone while a subject
was performing a particular activity.  There are multiple readings for each 
subject/activity pair.

	"subject"                             "activity"                            "tBodyAcc-mean()-X_1"                
	"tBodyAcc-mean()-Y_2"                 "tBodyAcc-mean()-Z_3"                 "tBodyAcc-std()-X_4"                 
	"tBodyAcc-std()-Y_5"                  "tBodyAcc-std()-Z_6"                  "tGravityAcc-mean()-X_41"            
	"tGravityAcc-mean()-Y_42"             "tGravityAcc-mean()-Z_43"             "tGravityAcc-std()-X_44"             
	"tGravityAcc-std()-Y_45"              "tGravityAcc-std()-Z_46"              "tBodyAccJerk-mean()-X_81"           
	"tBodyAccJerk-mean()-Y_82"            "tBodyAccJerk-mean()-Z_83"            "tBodyAccJerk-std()-X_84"            
	"tBodyAccJerk-std()-Y_85"             "tBodyAccJerk-std()-Z_86"             "tBodyGyro-mean()-X_121"             
	"tBodyGyro-mean()-Y_122"              "tBodyGyro-mean()-Z_123"              "tBodyGyro-std()-X_124"              
	"tBodyGyro-std()-Y_125"               "tBodyGyro-std()-Z_126"               "tBodyGyroJerk-mean()-X_161"         
	"tBodyGyroJerk-mean()-Y_162"          "tBodyGyroJerk-mean()-Z_163"          "tBodyGyroJerk-std()-X_164"          
	"tBodyGyroJerk-std()-Y_165"           "tBodyGyroJerk-std()-Z_166"           "tBodyAccMag-mean()_201"             
	"tBodyAccMag-std()_202"               "tGravityAccMag-mean()_214"           "tGravityAccMag-std()_215"           
	"tBodyAccJerkMag-mean()_227"          "tBodyAccJerkMag-std()_228"           "tBodyGyroMag-mean()_240"            
	"tBodyGyroMag-std()_241"              "tBodyGyroJerkMag-mean()_253"         "tBodyGyroJerkMag-std()_254"         
	"fBodyAcc-mean()-X_266"               "fBodyAcc-mean()-Y_267"               "fBodyAcc-mean()-Z_268"              
	"fBodyAcc-std()-X_269"                "fBodyAcc-std()-Y_270"                "fBodyAcc-std()-Z_271"               
	"fBodyAcc-meanFreq()-X_294"           "fBodyAcc-meanFreq()-Y_295"           "fBodyAcc-meanFreq()-Z_296"          
	"fBodyAccJerk-mean()-X_345"           "fBodyAccJerk-mean()-Y_346"           "fBodyAccJerk-mean()-Z_347"          
	"fBodyAccJerk-std()-X_348"            "fBodyAccJerk-std()-Y_349"            "fBodyAccJerk-std()-Z_350"           
	"fBodyAccJerk-meanFreq()-X_373"       "fBodyAccJerk-meanFreq()-Y_374"       "fBodyAccJerk-meanFreq()-Z_375"      
	"fBodyGyro-mean()-X_424"              "fBodyGyro-mean()-Y_425"              "fBodyGyro-mean()-Z_426"             
	"fBodyGyro-std()-X_427"               "fBodyGyro-std()-Y_428"               "fBodyGyro-std()-Z_429"              
	"fBodyGyro-meanFreq()-X_452"          "fBodyGyro-meanFreq()-Y_453"          "fBodyGyro-meanFreq()-Z_454"         
	"fBodyAccMag-mean()_503"              "fBodyAccMag-std()_504"               "fBodyAccMag-meanFreq()_513"         
	"fBodyBodyAccJerkMag-mean()_516"      "fBodyBodyAccJerkMag-std()_517"       "fBodyBodyAccJerkMag-meanFreq()_526" 
	"fBodyBodyGyroMag-mean()_529"         "fBodyBodyGyroMag-std()_530"          "fBodyBodyGyroMag-meanFreq()_539"    
	"fBodyBodyGyroJerkMag-mean()_542"     "fBodyBodyGyroJerkMag-std()_543"      "fBodyBodyGyroJerkMag-meanFreq()_552"

* The subject column contains the subject id (integer from 1-30)

* The activity column cointains the activity being performed by the subject 
during the observation (text: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, 
STANDING, LAYING).

* The remaining columns contain the sensor readings (decimal values) taken for subjects performing 
activities.  Sensor readings were recorded by smartphone worn by the subjects.
These values are decimal values. Column names match the names from the original data
set.  Please see the features_info.txt file distributed with the UCI HAR Dataset 
for more information about these sensor readings.


Data Set 2 (aka tidy2)
======================

Each row in this data set contains the mean values of ALL observations taken 
for a given subject performing a given activity. There is just one row of means
for each subject/activity pair.


	"subject"                             "activity"                            "tBodyAcc-mean()-X_1"                
	"tBodyAcc-mean()-Y_2"                 "tBodyAcc-mean()-Z_3"                 "tBodyAcc-std()-X_4"                 
	"tBodyAcc-std()-Y_5"                  "tBodyAcc-std()-Z_6"                  "tGravityAcc-mean()-X_41"            
	"tGravityAcc-mean()-Y_42"             "tGravityAcc-mean()-Z_43"             "tGravityAcc-std()-X_44"             
	"tGravityAcc-std()-Y_45"              "tGravityAcc-std()-Z_46"              "tBodyAccJerk-mean()-X_81"           
	"tBodyAccJerk-mean()-Y_82"            "tBodyAccJerk-mean()-Z_83"            "tBodyAccJerk-std()-X_84"            
	"tBodyAccJerk-std()-Y_85"             "tBodyAccJerk-std()-Z_86"             "tBodyGyro-mean()-X_121"             
	"tBodyGyro-mean()-Y_122"              "tBodyGyro-mean()-Z_123"              "tBodyGyro-std()-X_124"              
	"tBodyGyro-std()-Y_125"               "tBodyGyro-std()-Z_126"               "tBodyGyroJerk-mean()-X_161"         
	"tBodyGyroJerk-mean()-Y_162"          "tBodyGyroJerk-mean()-Z_163"          "tBodyGyroJerk-std()-X_164"          
	"tBodyGyroJerk-std()-Y_165"           "tBodyGyroJerk-std()-Z_166"           "tBodyAccMag-mean()_201"             
	"tBodyAccMag-std()_202"               "tGravityAccMag-mean()_214"           "tGravityAccMag-std()_215"           
	"tBodyAccJerkMag-mean()_227"          "tBodyAccJerkMag-std()_228"           "tBodyGyroMag-mean()_240"            
	"tBodyGyroMag-std()_241"              "tBodyGyroJerkMag-mean()_253"         "tBodyGyroJerkMag-std()_254"         
	"fBodyAcc-mean()-X_266"               "fBodyAcc-mean()-Y_267"               "fBodyAcc-mean()-Z_268"              
	"fBodyAcc-std()-X_269"                "fBodyAcc-std()-Y_270"                "fBodyAcc-std()-Z_271"               
	"fBodyAcc-meanFreq()-X_294"           "fBodyAcc-meanFreq()-Y_295"           "fBodyAcc-meanFreq()-Z_296"          
	"fBodyAccJerk-mean()-X_345"           "fBodyAccJerk-mean()-Y_346"           "fBodyAccJerk-mean()-Z_347"          
	"fBodyAccJerk-std()-X_348"            "fBodyAccJerk-std()-Y_349"            "fBodyAccJerk-std()-Z_350"           
	"fBodyAccJerk-meanFreq()-X_373"       "fBodyAccJerk-meanFreq()-Y_374"       "fBodyAccJerk-meanFreq()-Z_375"      
	"fBodyGyro-mean()-X_424"              "fBodyGyro-mean()-Y_425"              "fBodyGyro-mean()-Z_426"             
	"fBodyGyro-std()-X_427"               "fBodyGyro-std()-Y_428"               "fBodyGyro-std()-Z_429"              
	"fBodyGyro-meanFreq()-X_452"          "fBodyGyro-meanFreq()-Y_453"          "fBodyGyro-meanFreq()-Z_454"         
	"fBodyAccMag-mean()_503"              "fBodyAccMag-std()_504"               "fBodyAccMag-meanFreq()_513"         
	"fBodyBodyAccJerkMag-mean()_516"      "fBodyBodyAccJerkMag-std()_517"       "fBodyBodyAccJerkMag-meanFreq()_526" 
	"fBodyBodyGyroMag-mean()_529"         "fBodyBodyGyroMag-std()_530"          "fBodyBodyGyroMag-meanFreq()_539"    
	"fBodyBodyGyroJerkMag-mean()_542"     "fBodyBodyGyroJerkMag-std()_543"      "fBodyBodyGyroJerkMag-meanFreq()_552"

* The subject column contains the subject id (integer from 1-30)

* The activity column cointains the activity being performed by the subject 
during the observation (text: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, 
STANDING, LAYING).

* The remaining columns contain the mean values (decimal values) of ALL observations taken 
for a given subject performing a given activity.  As a result, there is just one row of means
for each subject/activity pair.  Please see the features_info.txt file distributed with the UCI HAR Dataset 
for more information about these sensor readings.

