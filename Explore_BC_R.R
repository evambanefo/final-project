pwd
getwd()
setwd("/Users/Eva/Desktop/datasciencecoursera/")
data<-read.csv("hw1_data.csv")
data
head(data)
data[1:2,]
tail(data)
data[47,]
bad<-is.na(data$Ozone)
bad
dim(bad)
bad$T
good<-complete.cases(data)
good
oz31<-data[data$Ozone>31, ][data$Temp>90, ]
oz31c<-complete.cases(oz31)
x<-oz31[oz31c, ]
mean(x$Solar.R)
m6<-data[data$Month==6, ]
m6
mean(m6$Temp)
x <- c(4, "a", TRUE)
class(x)




getwd()
setwd("~/biof309/final-project/")
list.files()
BC_data<-read.csv("BCdata.csv")
BC_data
colnames(BC_data)
head (BC_data)
BC_data2<-BC_data[1:12]
head(BC_data2)
colnames(BC_data2)
BC_Meta<- BC_data2[BC_data2$diagnosis == "M", ]
tail(BC_Meta)
BC_Beni<- BC_data2[BC_data2$diagnosis == "B", ]
tail(BC_Beni)
plot(BC_Meta$radius_mean)
plot(BC_Beni$radius_mean)
