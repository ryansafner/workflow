# Load data 
mydf1<-read.csv("Data/rawdata1.csv")
mydf2<-read.csv("Data/rawdata2.csv")

# join data
library("dplyr")
clean_data<-inner_join(mydf1, mydf2, key=id)

# save as clean data 
write.csv(clean_data, file="Data/clean_data.csv")