# load packages
library("ggplot2")

# load data

clean_data<-read.csv("Data/clean_data.csv")

# histogram by shape 

h1<-ggplot(data = clean_data, aes(x=x, fill=shape))+
  geom_histogram(color="black", bins=10)+theme_bw()+
  facet_grid(cols=vars(shape))
h1

ggsave("Figures/hist_of_x.pdf")

# scatterplot 

s2<-ggplot(data = clean_data, aes(x=x, y=y, color=shape))+
  geom_point()+
  geom_smooth(method="lm", color="black")+theme_bw()+
  facet_grid(cols=vars(shape))
s2

ggsave("Figures/scatter.png")
