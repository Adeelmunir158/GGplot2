require(ggplot2)
?mpg
View(mpg)
attach(mpg)

#====================================

#------------------------------
#One continuous variable
#------------------------------

c=ggplot(mpg, aes(displ))

#1.Histogram
# geom_histogram()

?geom_histogram
c+geom_histogram()
c+geom_histogram(bins=6)
c+geom_histogram(bins=6, fill=5)
c+geom_histogram(bins=6, fill=5, col=1)

#2.Frequency polygon()
# geom_freqpoly()

c+geom_freqpoly()
c+geom_histogram()

c+geom_histogram(fill=5, col=1)+
  geom_freqpoly(col=2,size=1)

#3.Density Plot
#geom_density()
?geom_density()
c+geom_density()
c+geom_density(stat = "count")

#4.Dotplot
#geom_dotplot()
c+geom_dotplot()
c+geom_dotplot(binwidth = .2, 
               fill=5)


#5.Boxplot
#geom_boxplot()

?geom_boxplot
c+geom_boxplot()
c+geom_boxplot(aes(x=hwy))
c+geom_boxplot(aes(x=hwy),
               outlier.color = 2,
               outlier.size = 3,
               outlier.stroke = 2,
               outlier.shape = 8)

#-------***---------***----------







#====================================

#------------------------------
#One Discrete Variable 
#------------------------------

d=ggplot(mpg, aes(drv))
summary(factor(drv))

#1.Barplot- geom_bar() 
?geom_bar()
d+geom_bar()
d+geom_bar(fill=5, col=1)
d+geom_bar(fill=5, col=1, size=3)

#2.Column Plot
# geom_col()
?geom_col()
d+geom_col(aes(y=hwy))
tapply(hwy, drv, sum)

d+geom_col(aes(y=mean(hwy)),fill=5,col=2)
tapply(hwy, drv, mean)
table(drv)
table(drv)*mean(hwy)

#3. Piechart
d=ggplot(mpg, aes(drv))
d+geom_bar()


pie(summary(factor(drv)))

pie(summary(factor(class)))
d+geom_bar()+coord_polar()
d1=ggplot(mpg, aes(class))
d1+geom_bar()+coord_polar()

  
#-------***---------***----------




#====================================

#------------------------------
#One Continuous Variable &
#One Discrete Variable
#------------------------------

cd=ggplot(mpg, aes(factor(drv),hwy))

#1.Violinplot
#geom_violin()
?geom_violin()
cd+geom_violin()

#2.Boxplot
#geom_boxplot()
?geom_boxplot()

c+geom_boxplot()
c+geom_boxplot(aes(y=class))
c+geom_boxplot(aes(y=class), fill=7)

cd+geom_boxplot()

cd+geom_boxplot(outlier.shape = 3,
                outlier.colour = 2,
                outlier.size = 4,
                outlier.stroke = 2)

#Violin Plot and Boxplot combined
cd+geom_violin(fill=5)
cd+geom_violin(fill=5)+geom_boxplot()

#-------***---------***----------





#====================================

#------------------------------
#Two Continuous Variables
#------------------------------

#1.Scatterplot
#geom_point()
?geom_point()

cc=ggplot(mpg, aes(displ,hwy))
cc+geom_point()
cc+geom_point(aes(col=class))

cc+geom_point(aes(col=class,
                  size=factor(cyl)))

cc+geom_point()+geom_smooth(span=1)

cc+geom_point()+
  geom_smooth(method = lm, se=T)

#2.Quantile plot
#geom_quantile()
?geom_quantile()
cc+geom_quantile()

#3.Jitter Plot
#geom_jitter()
?geom_jitter()
cc+geom_jitter()
cc+geom_jitter(aes(col=class,
                   size=factor(cyl)))

#4.Line plot
#geom_line()
?geom_line()
cc+geom_line()

#Time Series Analysis
#Datafiles: economics & economics_long
ggplot(economics, 
       aes(date, unemploy)) + 
       geom_line()

ggplot(economics, 
       aes(date, unemploy)) +
       geom_line(colour = "red")

ggplot(economics_long, 
       aes(date, value01, 
           colour = variable)) +
       geom_line()

#-------***---------***----------