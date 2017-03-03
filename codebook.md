#Features of this dataset 
=================

At a high level, the dataset contains the following:
* Subject: id of the participant
* Activity: the activity that the subject was doing during data collection
* ...: data collected from mobile sensors

The ... features selected for this database come from the accelerometer and gyroscope 3-axial raw signals Time Domain Accelerometer-XYZ and Time Domain Gyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (Time Domain Body Accelerometer-XYZ and Time Domain Gravity Accelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (Time Domain Body Accelerometer Jerk-XYZ and Time Domain Body Gyroscope Jerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (Time Domain Body Accelerometer Magnitude, Time Domain Gravity Accelerometer Magnitude, Time Domain Body Accelerometer Jerk Magnitude, Time Domain Body Gyroscope Magnitude, Time Domain Body Gyroscope Jerk Magnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing Frequency Domain Body Accelerometer-XYZ, Frequency Domain Body Accelerometer Jerk-XYZ, Frequency Domain Body Gyroscope-XYZ, Frequency Domain Body Accelerometer Jerk Magnitude, Frequency Domain Body Gyroscope Magnitude, Frequency Domain Body Gyroscope Jerk Magnitude. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Time Domain Body Accelerometer-XYZ
Time Domain Gravity Accelerometer-XYZ
Time Domain Body Accelerometer Jerk-XYZ
Time Domain Body Gyroscope-XYZ
Time Domain Body Gyroscope Jerk-XYZ
Time Domain Body Accelerometer Magnitude
Time Domain Gravity Accelerometer Magnitude
Time Domain Body Accelerometer Jerk Magnitude
Time Domain Body Gyroscope Magnitude
Time Domain Body Gyroscope Jerk Magnitude
Frequency Domain Body Accelerometer-XYZ
Frequency Domain Body Accelerometer Jerk-XYZ
Frequency Domain Body Gyroscope-XYZ
Frequency Domain Body Accelerometer Magnitude
Frequency Domain Body Accelerometer Jerk Magnitude
Frequency Domain Body Gyroscope Magnitude
Frequency Domain Body Gyroscope Jerk Magnitude

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample.

The complete list of variables of each feature vector is available in 'features.txt'
