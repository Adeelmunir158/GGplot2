

library(ggplot2)

g=ggplot(mpg, aes(displ,hwy, colour=class)) +
       geom_point()


install.packages("directlabels")
library(directlabels)

ggplot(mpg, aes(displ,hwy, colour=class)) +
  geom_point(show.legend = F)+
  geom_dl(aes(label=class),
          method = "smart.grid")


install.packages("add2ggplot")
library(add2ggplot)

g+theme_classic2()
g+theme_du_bois()
g+theme_grey_and_red()
g+theme_ilo()
g+theme_white()

install.packages("ggforce")
require(ggforce)
g+geom_mark_ellipse(aes(label=cyl, group=cyl))


install.packages("gghighlight")
require(gghighlight)

gg=ggplot(mpg,aes(displ, hwy, colour=factor(cyl))) 

gg+geom_point()

gg+geom_point()+gghighlight()+facet_wrap(vars(cyl))


install.packages("ggplotgui")
library(ggplotgui)
ggplot_shiny()
