require(ggplot2)
View(mpg)

#====================================
attach(mpg)

#Only colour
g=ggplot(mpg)+ 
  geom_point(aes(x=displ, y=hwy)) 

g+aes(col=class)

#Only Size
g+aes(size=class)

#Shape
g+aes(shape=class)

#Size & Colour
g+aes(size=class, 
      colour=as.factor(cyl))

#Alpha
g+aes(alpha=class, 
      colour=class)


#Alpha in Density plot

ggplot(mpg,aes(x=displ,
               fill=as.factor(cyl)))+
       geom_density()

ggplot(mpg,aes(x=displ,
               fill=as.factor(cyl)))+
  geom_density(alpha=.5)


