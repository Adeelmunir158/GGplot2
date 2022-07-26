require(ggplot2)
View(mpg)

#====================================
attach(mpg)

#Only axes provided
g=ggplot(mpg, aes(x=displ, y=hwy))+
  geom_point()
g
#Split charts for different classes
g+facet_wrap(~class)

g+facet_wrap(~class, nrow = 2)

summary(as.factor(drv))
summary(as.factor(cyl))

g+facet_grid(drv~cyl)

g+facet_grid(drv~cyl)+
  aes(col=class)
