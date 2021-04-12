library(dplyr)
library(plyr)
# load the data

acs <- read.csv("~/MSDS/DSC520/dsc520/data/acs-14-1yr-s0201.csv")
str(acs)

# Use the apply function on a variable in your dataset
apply(acs[c(6,7,8)], 2, mean)


# Use the aggregate function on a variable in your dataset
sum(acs$RacesReported)
max(acs$RacesReported)

#Check distributions of the data
plot(acs)

#Identify if there are any outliers
plot(acs$RacesReported) # Detected an outlier

plot(acs$HSDegree) # No significant outliers

plot(acs$BachDegree) # No significant outliers

# Create at least 2 new variables
# Going to create some arbitrary variables with arbitrary calculations
acs$edu_combined <- acs$HSDegree + acs$BachDegree

acs$racesper10000 <- acs$RacesReported/10000


