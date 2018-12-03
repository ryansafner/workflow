reg1<-lm(y~x, data=clean_data)
summary(reg1)

reg2<-lm(y~x+shape, data=clean_data)
summary(reg2)

reg3<-lm(y~x+shape+state, data=clean_data)
summary(reg3)
