##Description of the script
First let's say we work on modified data, as inertial measurements are the rawest ones, but for the aim of this work I only consider working on sets wich contain results in analysis functions application on the inertial sets.

###1 Merging the training and the test sets to create one data set.
* We Get features to be used as variable names and rename those duplicated
* We Get train and test data as numeric, named with features.
* We merge train and data measurements
* We Get and merge train and test subjects and rename the result "subject"
* We Get and merge train and test activity and naming it "activity"
* We Get activity_labels
* We replace activity codes by activity labels in activity, setting activity as vector
* We combine the subject, activity and data by columns.

###2 Extracting only the measurements on the mean and standard deviation for each measurement.
* We select columns containing mean and standart deviation.

###3 descriptive activity names to name the activities in the data set
* done during step 1.

###4 Appropriately labeling the data set with descriptive variable names.

with gsub we replace some regular expressions,

* deleting dots,
* dashes,
* useless spaces,
* redundant names,
* spreading t and f as time and frequency.

###5 Creating tidy dataset from step 4 with averages by subject and activity
  * grouped_by function 
  * summarize_each 
  
give us our final data set we write in the file sumup.txt
##Description of the variables in sumup.txt 

data are tidy and

for each subject identified from 1 to 30

and for each activity (WALKING, WALKING_UPSTAIRS,  WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

it shows average for measurements of the following variables wich are obtained on previous operations on sets of 128 measurements for each record :

* time body acc mean x
* time body acc mean y
* time body acc mean z
* time body acc std x
* time body acc std y
* time body acc std z
* time gravity acc mean x
* time gravity acc mean y
* time gravity acc mean z
* time gravity acc std x
* time gravity acc std y
* time gravity acc std z
* time body accjerk mean x
* time body accjerk mean y
* time body accjerk mean z
* time body accjerk std x
* time body accjerk std y
* time body accjerk std z
* time body gyro mean x
* time body gyro mean y
* time body gyro mean z
* time body gyro std x
* time body gyro std y
* time body gyro std z
* time body gyrojerk mean x
* time body gyrojerk mean y
* time body gyrojerk mean z
* time body gyrojerk std x
* time body gyrojerk std y
* time body gyrojerk std z
* time body accmag mean
* time body accmag std
* time gravity accmag mean
* time gravity accmag std
* time body accjerkmag mean
* time body accjerkmag std
* time body gyromag mean
* time body gyromag std
* time body gyrojerkmag mean
* time body gyrojerkmag std
* frequency body acc mean x
* frequency body acc mean y
* frequency body acc mean z
* frequency body acc std x
* frequency body acc std y
* frequency body acc std z
* frequency body acc meanfreq x
* frequency body acc meanfreq y
* frequency body acc meanfreq z
* frequency body accjerk mean x
* frequency body accjerk mean y
* frequency body accjerk mean z
* frequency body accjerk std x
* frequency body accjerk std y
* frequency body accjerk std z
* frequency body accjerk meanfreq x
* frequency body accjerk meanfreq y
* frequency body accjerk meanfreq z
* frequency body gyro mean x
* frequency body gyro mean y
* frequency body gyro mean z
* frequency body gyro std x
* frequency body gyro std y
* frequency body gyro std z
* frequency body gyro meanfreq x
* frequency body gyro meanfreq y
* frequency body gyro meanfreq z
* frequency body accmag mean
* frequency body accmag std
* frequency body accmag meanfreq
* frequency body accjerkmag mean
* frequency body accjerkmag std
* frequency body accjerkmag meanfreq
* frequency body gyromag mean
* frequency body gyromag std
* frequency body gyromag meanfreq
* frequency body gyrojerkmag mean
* frequency body gyrojerkmag std
* frequency body gyrojerkmag meanfreq
* angle time body accmean gravity
* angle time body accjerkmean gravitymean
* angle time body gyromean gravitymean
* angle time body gyrojerkmean gravitymean
* angle x gravitymean
* angle y gravitymean
* angle z gravitymean



