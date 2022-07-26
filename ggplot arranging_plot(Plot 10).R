require(ggplot2)

#====================================
attach(mpg)
View(mpg)

a=ggplot(mpg, aes(displ,hwy))+
  geom_point()
a

b=ggplot(mpg)+
  geom_bar(aes(x=as.character(year),
            fill=drv),
           position="dodge")
b

c=ggplot(mpg)+
  geom_density(aes(x=hwy,
          fill=drv))+
  facet_grid(rows = vars(drv))
c

#-----------------------------
install.packages("patchwork")
require(patchwork)

a+b+c
a+b+c+plot_layout(ncol=2)
a+b+c+plot_layout(nrow=2)

c+(a/b)       #Side by side
c/(a+b)       #Top and Bottom

#Plot Annotation
c+(a/b)+plot_annotation(tag_levels = "1")
c+(a/b)+plot_annotation(tag_levels = "I")
c+(a/b)+plot_annotation(tag_levels = "A")


#Collecting common legends
a+b+c+plot_layout(ncol=2, 
                  guides='collect')

#Positioning of common legend
#a+b+c+guide_area()+ 
#plot_layout(ncol=2, 
#           guides="collect")

#Common Theme
a+b&theme_dark()
ab=a+b&theme_dark()

#Common Annotation
ab=ab+plot_annotation(
  title = "My chart",
  caption = "Source: abc.com"
)
ab

#Superimposing one chart over other
AB=a+inset_element(b,
                   left=.5,
                   bottom = .5,
                   right = .9, 
                   top=.95)

AB
AB+plot_annotation(tag_levels = "A")
