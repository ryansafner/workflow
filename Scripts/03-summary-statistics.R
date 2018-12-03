df.sum<-clean_data %>%
  select(x,y) %>% # select variables to summarize 
  summarize_each(funs("Obs"=n(),
                      "Mean"=round(mean(.,na.rm=TRUE),2),
                      "Std. Dev."=round(sd(., na.rm=TRUE),2),
                      "Min"=round(min(., na.rm=TRUE),2),
                      "Q1"=round(quantile(., 0.25, na.rm=TRUE),2),
                      "Median"=round(median(., na.rm=TRUE),2),
                      "Q3"=round(quantile(., 0.75, na.rm=TRUE),2),
                      "Max"=round(max(., na.rm=TRUE),2)
  ))

# use tidyr to reshape df.sum from wide to long

df.sum.tidy<- df.sum %>%
  gather(key=stat,value=val) %>%  # shapes into (k x 8) x 2 long table of stats and values ( k = # variables, 8 statistics per variable)  
  separate(stat, into=c("var", "stat"), sep="_") %>% # splits first column into 2 columns, the variable, and the statistic  
  spread(stat, val) %>% # shapes into (k x 8) long table of individual statistics, where each row is a variable 
  select("var", "Obs", "Min", "Q1", "Median", "Q3", "Max", "Mean", "Std. Dev.") %>%
  rename(Variable="var") %>% # renames "var" into "Variable"
  kable(.) # produces nice markdown table
