# loading packages

#library(caTools)

# loading the data
setwd("~/MSDS/DSC520/dsc520")

data <- read_csv("thoracic_surgery/thoracic.csv",
                     col_types = cols(DGN = col_factor(levels = c("DGN3", "DGN2", "DGN4", "DGN6", "DGN5", "DGN8", "DGN1")), 
                                   PRE6 = col_factor(levels = c("PRZ2", "PRZ1", "PRZ0")),
                                   PRE14 = col_factor(levels = c("OC11", "OC14", "OC12", "OC13"))))


str(data)

# logistic <- glm(Risk1Yr ~ DGN+PRE4+PRE5+PRE6+PRE7+PRE8+PRE9+PRE10+PRE11+PRE14+PRE17+PRE19+PRE25+PRE30+PRE32+AGE, data = data, family="binomial")
logistic <- glm(Risk1Yr ~ ., data = data, family="binomial")

summary(logistic)
