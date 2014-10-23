## CodeBook.md for PhoneMovementMeasures.txt

### Variables


**subject**
     
     1-30, experimental participants
     
**set**
     
     train - subjects used for training classification
     test - subjects used for testing classification
     
**activity**

     six different activties performed by subjects
          * walking
          * walking up stairs
          * walking down stairs
          * sitting
          * standing
          * laying

**n**

     number of observations contributing to each activity-subject mean (median = 55, range = 36 to 95)


##### Key to Variable Name Components

Each of the following variables (i.e all variables except ***subject***, ***set***, ***activity***, and ***n***) is expressed as the mean of measurements for each activity and subject. This is denoted by the leading ***mean***. The different variables each measure some distinct component of movement in three dimensional space (***Z, Y, Z***). ***time*** within a variable name identifies it as a temporal measure, whereas ***freq*** within a variable name identifies it as a ***frequency*** measure that was derived from a Fast Fourier Transformation of a temporal signal. ***Body*** within a variable name denotes body. ***Acc*** within a variable name denotes acceleration. ***Gyro*** within a variable name denotes gyroscope. ***Jerk*** within a variable name denotes a second derivative of the measure of movement (i.e. rate of change of change). ***Std*** within a variable name denotes standard deviation of the measure. Each variable was standardized to a range of -1 to 1 by Anguita et al. (2012). For more details about the original data see <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.


**meantimeBodyAccMeanX**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyAccMeanY**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyAccMeanZ**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyAccStdX**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyAccStdY**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyAccStdZ**

     range of -1 to 1, see above for key to name components
     
**meantimeGravityAccMeanX**

     range of -1 to 1, see above for key to name components
     
**meantimeGravityAccMeanY**

     range of -1 to 1, see above for key to name components
     
**meantimeGravityAccMeanZ**

     range of -1 to 1, see above for key to name components
     
**meantimeGravityAccStdX**

     range of -1 to 1, see above for key to name components
     
**meantimeGravityAccStdY**

     range of -1 to 1, see above for key to name components
          
**meantimeGravityAccStdZ**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyAccJerkMeanX**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyAccJerkMeanY**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyAccJerkMeanZ**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyAccJerkStdX**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyAccJerkStdY**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyAccJerkStdZ**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyGyroMeanX**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyGyroMeanY**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyGyroMeanZ**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyGyroStdX**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyGyroStdY**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyGyroStdZ**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyGyroJerkMeanX**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyGyroJerkMeanY**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyGyroJerkMeanZ**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyGyroJerkStdX**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyGyroJerkStdY**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyGyroJerkStdZ**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyAccMagMean**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyAccMagStd**

     range of -1 to 1, see above for key to name components
     
**meantimeGravityAccMagMean**

     range of -1 to 1, see above for key to name components
     
**meantimeGravityAccMagStd**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyAccJerkMagMean**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyAccJerkMagStd**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyGyroMagMean**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyGyroMagStd**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyGyroJerkMagMean**

     range of -1 to 1, see above for key to name components
     
**meantimeBodyGyroJerkMagStd**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccMeanX**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccMeanY**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccMeanZ**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccStdX**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccStdY**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccStdZ**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccMeanmeanfreqX**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccMeanmeanfreqY**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccMeanmeanfreqZ**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccJerkMeanX**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccJerkMeanY**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccJerkMeanZ**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccJerkStdX**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccJerkStdY**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccJerkStdZ**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccJerkMeanmeanfreqX**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccJerkMeanmeanfreqY**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccJerkMeanmeanfreqZ**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyGyroMeanX**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyGyroMeanY**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyGyroMeanZ**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyGyroStdX**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyGyroStdY**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyGyroStdZ**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyGyroMeanmeanfreqX**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyGyroMeanmeanfreqY**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyGyroMeanmeanfreqZ**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccMagMean**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccMagStd**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyAccMagMeanmeanfreq**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyBodyAccJerkMagMean**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyBodyAccJerkMagStd**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyBodyAccJerkMagMeanmeanfreq**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyBodyGyroMagMean**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyBodyGyroMagStd**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyBodyGyroMagMeanmeanfreq**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyBodyGyroJerkMagMean**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyBodyGyroJerkMagStd**

     range of -1 to 1, see above for key to name components
     
**meanfreqBodyBodyGyroJerkMagMeanmeanfreq**

     range of -1 to 1, see above for key to name components
     
