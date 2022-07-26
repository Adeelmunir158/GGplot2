require(ggplot2)

#Topics Covered:
#1. Horizontal Line
#2. Vertical line
#3. Pattern 
#4. Straight Line
#5. Annotations
#6. Titles & Labels
#7. Themes

gg=ggplot(data=mpg,aes(x=displ, y=hwy))+
  geom_point()

gg


#1. Horizontal Line
gg+geom_hline(yintercept = 25, 
              size=1, colour="red2")

#2. Vertical Line
gg+geom_vline(xintercept = 4, 
              size=2, colour="red2")

#3. Curvi-linear Pattern
gg+geom_smooth()

#4. Linear Regression Line  
gg+geom_smooth(size=1.5, 
               method = "lm")
  

#5. Additional Text Information  
gg+annotate(geom = "text", 
            label="R2=.5",
           x=5, y=40, size=5, 
           col=2)+
  geom_smooth(size=1.5, 
              method = "lm")

#6. Titles & Labels
gg+labs(title="My Chart", 
        subtitle="Highway Mileage", 
        y="Highway Mileage", 
        x="Displacement", 
        caption="First chart")


#7. Different Themes
gg+theme_bw()
gg+theme_gray()
gg+theme_grey()
gg+theme_linedraw()
gg+theme_light()
gg+theme_minimal()
gg+theme_classic()
gg+theme_void()
gg+theme_dark()

#Package add2ggplot
install.packages("add2ggplot")
require(add2ggplot)
gg+theme_classic2()
gg+theme_du_bois()
gg+theme_grey_and_red()
gg+theme_ilo()
gg+theme_white()
