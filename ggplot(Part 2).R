require(ggplot2)
?mpg
View(mpg)

#====================================
attach(mpg)

#Only axes
ggplot(mpg)

#Only axes provided
ggplot(mpg, aes(x=displ, y=hwy))

#Plotting points
ggplot(mpg, aes(x=displ, y=hwy))+
       geom_point()

#----------Creating Layers----------
gg=ggplot(mpg, 
          aes(x=displ, y=hwy))

#Additional property of points
gg+geom_point(col=3, 
              size=2, 
              pch=19)

#Proving color as per the cylinder values
summary(as.factor(cyl))
gg+geom_point(col=cyl, 
              size=2, 
              pch=19)

#Proving size as per the cylinder values
gg+geom_point(col=cyl, 
              size=cyl, 
              pch=19)

#Additional property of Aesthetics
ggplot(mpg,aes(x=displ, y=hwy,
       colour=class))+
       geom_point()


ggplot(mpg,aes(x=displ, y=hwy,
               colour=class,size=class))+
  geom_point()
#==========Different geom===========
# 1. Univariate Analysis
# 2. Bivariate Analysis
 

#=======Univariate Analysis=========

g=ggplot(mpg, aes(x=displ))

#------------Histogram------------
g + geom_histogram()

g + geom_histogram(binwidth = .75,
                   fill="grey",
                   colour="black")

#------------Density------------
g + geom_density()
colours()
ggplot(mpg,aes(x=displ,
             fill=as.factor(cyl)))+
       geom_density()

ggplot(mpg,aes(x=displ,
               fill=as.factor(cyl)))+
       geom_density(alpha=.5)

#------------Boxplot------------
g + geom_boxplot(colour="red",
                 fill="green")

gg + geom_boxplot(colour="red",
                  fill="green")

#------------Dotplot------------
g + geom_dotplot()

g + geom_dotplot(binwidth = .2)
  

#========Bivariate Analysis=========

#-----------Scatter Plot------------
gg + geom_jitter(height = 0.5, 
                 width = .3)


#------------Violin Plot------------
ggplot(mpg, 
       aes(x=displ,y=hwy, 
           fill=as.factor(cyl)))+
       geom_violin(alpha=.5)+
       geom_boxplot()

gg + geom_point()
gg + geom_line()
gg + geom_smooth()
gg + geom_point() + geom_smooth() 
gg + geom_point() + geom_smooth(method = 'lm')

#------------Column plot------------
ggplot(mpg, aes(x=as.factor(cyl),y=displ, fill=cyl))+
     geom_col() 

ggplot(mpg, aes(x=as.factor(cyl),y=displ, fill=class))+
  geom_col() 

ggplot(mpg, aes(x=as.factor(cyl),y=displ, fill=class))+
  geom_col(position = "dodge") 


#Regression line through all point, color by cylinder
gg + geom_point(aes(col=2,size=4))+
  geom_smooth(method="lm",col=1, size=1)


#===Adding Title & Labels to Chart======

g1=ggplot(mpg, aes(x=displ, y=hwy))+
  geom_point(col=6, size=3)+
  geom_smooth(method="lm",col=1, size=2)

g1

g1+labs(title="My Chart", 
        subtitle="Highway Mileage", 
        y="hwy", x="hwy", 
        caption="First chart")


#==============Annotation============
g1+annotate(geom="text", x=5, y=35,
            label="r2=0.58")

