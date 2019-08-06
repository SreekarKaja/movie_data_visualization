#*** Movies
getwd()

setwd("C:\\Users\\SAI SREEKAR KAJA\\Desktop\\python\\01_DataScience\\Datasets")

movies <- read.csv("Movie-Ratings.csv")

View(movies)

head(movies)

colnames(movies)

colnames(movies) <- c("Film","Genre","CriticRating",
                      "AudienceRating","BudgetMillions",
                      "Year")

colnames(movies)

head(movies)

tail(movies)

str(movies)

summary(movies)

summary(movies$Year)

str(movies$Year)

movies$Year <- factor(movies$Year) # gives meaningful summary 

summary(movies$Year)

summary(movies)

str(movies)

#install.packages("ggplot2")
library(ggplot2)
head(movies)

# aesthetics is hoe to use ur data set
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating))
# 3 most important things neededd for ggplt are data aes and geom_ without these 3 wont plot
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating))+geom_point()
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,colour=Genre,size=1))+geom_point()
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,colour=Genre,size=BudgetMillions))+geom_point()
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,colour=Genre,size=Genre))+geom_point()
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating))
p<-ggplot(data=movies,aes(x=CriticRating,y=AudienceRating))
p+geom_point()
p+geom_line()
p+geom_line()+geom_point()

#overriding aesthetics
q<-ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,colour=Genre,size=BudgetMillions))
q
q+geom_point()
q+geom_point(aes(size=CriticRating))
q+geom_point()
q+geom_point(aes(size=BudgetMillions))
q+geom_point(aes(size=CriticRating))
q+geom_point(aes(x=BudgetMillions))+xlab("Budget in Million$$$") # naming X axis
q+geom_line ()+geom_point()
q+geom_line (size=1)+geom_point()
r<-ggplot(data=movies,aes(x=CriticRating,y=AudienceRating))
r
r+geom_point()
r+geom_point(aes(colour=Genre))
r+geom_point(colour='green')
r+geom_point(aes(size=10000))
s <- ggplot(data=movies, aes(x=BudgetMillions))
s + geom_histogram(binwidth=10)
s + geom_histogram(binwidth=5)
s + geom_histogram(binwidth=50)
s + geom_histogram(binwidth=1)
s+geom_histogram(bandwidth=10,fill='green')
s+geom_histogram(bandwidth=10,aes(fill='green'))
colors()
t<-ggplot(data=movies,aes(x=AudienceRating))
t
t+geom_histogram(binwidth=10,fill='White',colour='Blue')
t+geom_histogram(binwidth=10,aes(x=CriticRating),fill='White',color='Blue')
