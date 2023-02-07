#data visualization

count<-table(mtcars$gear)
View(count)
plot(count)
barplot(count)
barplot(count,horiz=TRUE)

barplot(count,main="sample bar plot",
        xlab='improvement',
        ylab='frequency',
        legend=rownames(count),
        col=c('red','yellow','green'))
pie(count)

#let us try line, scatter and bar plot

salary<-read.csv('salary_data.csv')
View(salary)
install.packages('ggplot2')
library(ggplot2)
ggplot(salary,aes(x=Experience,y=Salary))+
  geom_point()
ggplot(salary,aes(x=Experience,y=Salary,))+
  geom_line()
ggplot(salary,aes(x=Experience,y=Salary))+
  geom_boxplot()
