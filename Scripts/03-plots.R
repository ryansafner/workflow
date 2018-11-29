# load packages
library("ggplot2")

# load data

clean_data<-read.csv("Data/clean_data.csv")

# scatterplot

s1<-ggplot(data = clean_data, aes(x=x, y=y))+
  geom_point()
s1
ggsave("Figures/fig1", device="eps")
#
