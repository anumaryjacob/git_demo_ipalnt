# learning GG plot
# February 22, 2015
#making changes to check


install.packages("ggplot2", dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")


head(iris)
library("ggplot2")
library("reshape2")
library("plyr")
library("ggthemes")

myplot <- ggplot(data = iris, aes(x=Sepal.Length, y= Sepal.Width)) + 
  geom_point()
myplot + geom_point(size=3)


myplot <- ggplot(data = iris, aes(x=Sepal.Length, y= Sepal.Width, color = Species)) + 
  geom_point(aes(shape = Species), size = 3) +
  facet_grid( . ~ Species)
myplot
myplot + geom_point(size=3)

myplot <- ggplot(data = iris, aes(x=Sepal.Length, y= Sepal.Width, color = Species)) + 
  geom_point(aes(shape = Species), size = 3) +
  facet_wrap( ~ Species)
myplot


dim(diamonds)
sample(1:dim(diamonds),1000)

d2<-diamonds[sample(1:dim(diamonds),1000),]
head(d2)
ggplot(data = d2, aes(x=carat, y=price, color = color)) + 
  geom_point(size = 3)
myplot + geom_point(size=3)

library(MASS)
myplot<-ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()

summary(myplot)


###Colors

library(RColorBrewer)
display.brewer.all()

df <- melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge") + 
scale_fill_brewer(palette = "Set1")



