# You normally would not need this script, but for illustrative purposes, I am going to generate
# my own "fake" data to use for this project, rather than loading some pre-existing dataset

# generate random data
set.seed(1) # make "random" results reproducible

# make dataframe df of random data

shape_types<-c("square", "circle","rectangle", "triangle")
shape<-sample(shape_types,500,replace=TRUE)

letters<-LETTERS(1:26)
letter<-sample(letters,500,replace=TRUE)

df<-data.frame(id=seq(1,500,1), # 
               x=rnorm(500,5,1), # 500 random draws from a normal distr with mean 5 and sd 1
               y=rnorm(500,1,10), # 500 random draws from a uniform distr between 1 and 10
               shape=factor(shape),
               letter=factor(letter))

# a second dataframe with useful information about the same 500 individuals

states<-c("AK","AL","AR","AZ","CA", "CO", "CT", "DC", "DE", "FL", "GA", "HI",
         "IA", "ID", "IL", "IN", "KS", "KY", "LA", "MA", "MD", "ME", "MI",
         "MN", "MO", "MS", "MT", "NC", "ND", "NE", "NH", "NJ", "NM", "NV",
         "NY", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT",
         "VA", "VT", "WA", "WI", "WV", "WY")
state<-sample(states,500,replace=TRUE)

df2<-data.frame(id=seq(1,500,1), # 
                state=factor(state))

# save data to csv
write.csv(df, file="Data/rawdata1.csv")
write.csv(df2, file="Data/rawdata2.csv")
