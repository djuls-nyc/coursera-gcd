# Human Activity Recognition Using Smartphones
Sub-dataset for Coursera Assignment (Getting and Cleaning Data)
Version 1.0

This dataset is derived from a study at UCI, which can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Summary of the original data set:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


##Steps Performed
1/ Merged the training and the test sets to create one data set.     
2/ Extracted only the measurements on the mean and standard deviation for each measurement.      
3/ Used descriptive activity names to name the activities in the data set.      
4/ Labelled the data set with descriptive variable names.      
5/ Created this dataset with the average of each variable for each activity and each subject.     

##Resulting Dataset - Features
 [1] "Subject"                                        
 [2] "Activity"                                       
 [3] "timeBodyAccelerometerMeanX"                     
 [4] "timeBodyAccelerometerMeanY"                     
 [5] "timeBodyAccelerometerMeanZ"                     
 [6] "timeBodyAccelerometerStdX"                      
 [7] "timeBodyAccelerometerStdY"                      
 [8] "timeBodyAccelerometerStdZ"                      
 [9] "timeGravityAccelerometerMeanX"                  
[10] "timeGravityAccelerometerMeanY"                  
[11] "timeGravityAccelerometerMeanZ"                  
[12] "timeGravityAccelerometerStdX"                   
[13] "timeGravityAccelerometerStdY"                   
[14] "timeGravityAccelerometerStdZ"                   
[15] "timeBodyAccelerometerJerkMeanX"                 
[16] "timeBodyAccelerometerJerkMeanY"                 
[17] "timeBodyAccelerometerJerkMeanZ"                 
[18] "timeBodyAccelerometerJerkStdX"                  
[19] "timeBodyAccelerometerJerkStdY"                  
[20] "timeBodyAccelerometerJerkStdZ"                  
[21] "timeBodyGyroscopeMeanX"                         
[22] "timeBodyGyroscopeMeanY"                         
[23] "timeBodyGyroscopeMeanZ"                         
[24] "timeBodyGyroscopeStdX"                          
[25] "timeBodyGyroscopeStdY"                          
[26] "timeBodyGyroscopeStdZ"                          
[27] "timeBodyGyroscopeJerkMeanX"                     
[28] "timeBodyGyroscopeJerkMeanY"                     
[29] "timeBodyGyroscopeJerkMeanZ"                     
[30] "timeBodyGyroscopeJerkStdX"                      
[31] "timeBodyGyroscopeJerkStdY"                      
[32] "timeBodyGyroscopeJerkStdZ"                      
[33] "timeBodyAccelerometerMagnitudeMean"             
[34] "timeBodyAccelerometerMagnitudeStd"              
[35] "timeGravityAccelerometerMagnitudeMean"          
[36] "timeGravityAccelerometerMagnitudeStd"           
[37] "timeBodyAccelerometerJerkMagnitudeMean"         
[38] "timeBodyAccelerometerJerkMagnitudeStd"          
[39] "timeBodyGyroscopeMagnitudeMean"                 
[40] "timeBodyGyroscopeMagnitudeStd"                  
[41] "timeBodyGyroscopeJerkMagnitudeMean"             
[42] "timeBodyGyroscopeJerkMagnitudeStd"              
[43] "frequencyBodyAccelerometerMeanX"                
[44] "frequencyBodyAccelerometerMeanY"                
[45] "frequencyBodyAccelerometerMeanZ"                
[46] "frequencyBodyAccelerometerStdX"                 
[47] "frequencyBodyAccelerometerStdY"                 
[48] "frequencyBodyAccelerometerStdZ"                 
[49] "frequencyBodyAccelerometerJerkMeanX"            
[50] "frequencyBodyAccelerometerJerkMeanY"            
[51] "frequencyBodyAccelerometerJerkMeanZ"            
[52] "frequencyBodyAccelerometerJerkStdX"             
[53] "frequencyBodyAccelerometerJerkStdY"             
[54] "frequencyBodyAccelerometerJerkStdZ"             
[55] "frequencyBodyGyroscopeMeanX"                    
[56] "frequencyBodyGyroscopeMeanY"                    
[57] "frequencyBodyGyroscopeMeanZ"                    
[58] "frequencyBodyGyroscopeStdX"                     
[59] "frequencyBodyGyroscopeStdY"                     
[60] "frequencyBodyGyroscopeStdZ"                     
[61] "frequencyBodyAccelerometerMagnitudeMean"        
[62] "frequencyBodyAccelerometerMagnitudeStd"         
[63] "frequencyBodyBodyAccelerometerJerkMagnitudeMean"  
[64] "frequencyBodyBodyAccelerometerJerkMagnitudeStd"      
[65] "frequencyBodyBodyGyroscopeMagnitudeMean"        
[66] "frequencyBodyBodyGyroscopeMagnitudeStd"             
[67] "frequencyBodyBodyGyroscopeJerkMagnitudeMean"    
[68] "frequencyBodyBodyGyroscopeJerkMagnitudeStd"    

#Features Description:

Subject is an ID (integer) to identify each of the 30 volunteers.

Activity is on e of the following: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

All other variables are numerical, normalized and bounded within [-1,1], and have been obtained by averaging measurements. 
The features names is contructed as follows:
time/frequency: time-domain signal or FFT
Body/Gravity: body or gravity acceleration signal
Accelerometer/Gyroscope: accelerometer or gyroscope 3-axial signals
Jerk (optional): Jerk signals
Magnitude (optional): magnituyde of 3-d signals
Mean/Std : mean or standard deviation measurements
X,Y or Z (optional): axis (for 3-d signals)

