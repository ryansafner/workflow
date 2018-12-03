# Load all necessary packages for later analysis
suppressPackageStartupMessages(library("tidyverse")) # for dplyr for data wrangling, tidyr for reshaping data, ggplot2 for plotting
library("knitr") # for kable() function of rendering nice markdown tables
library("stargazer") # for making regression tables 


# Load data 
mydf1<-read.csv("Data/rawdata1.csv")
mydf2<-read.csv("Data/rawdata2.csv")

# join data
library("dplyr")
clean_data<-inner_join(mydf1, mydf2, key=id)

# save as clean data 
write.csv(clean_data, file="Data/clean_data.csv")