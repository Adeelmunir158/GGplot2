require(ggplot2)
View(mpg)
require(patchwork)

#====================================
attach(mpg)
summary(as.factor(year))
#------------------------------
#1. Numeric position scales
mpg_99=subset(mpg, year == 1999)
mpg_08=subset(mpg, year == 2008)

base_99=ggplot(mpg_99, aes(displ, hwy)) + 
        geom_point()
base_08=ggplot(mpg_08, aes(displ, hwy)) + 
        geom_point()

base_99+base_08


# To make the uniform axes

base_99+base_08+
  scale_x_continuous(limits = c(1, 7)) +
  scale_y_continuous(limits = c(10, 45))
  #------------------------------
#2. Zooming in

g=ggplot(mpg, aes(drv, hwy))+
  geom_boxplot()+
  geom_hline(yintercept = 28, 
             colour = "red")

g

#Option-1
x=g+coord_cartesian(ylim = c(10, 35))
x
#Option-2
y=g+ylim(10, 35)
y
#plotting all 3 charts side by side
g+x+y

#Additive or Multiplicative expansions
gg=ggplot(mpg, aes(displ, hwy)) +
  geom_point()
gg

a=gg+
  scale_x_continuous(expand = expansion(add = 5)) +
  scale_y_continuous(expand = expansion(add = 10))
gg+a

b=gg+
  scale_x_continuous(expand = expansion(mult = .75)) +
  scale_y_continuous(expand = expansion(mult = .75))
gg+b

c=gg+
  scale_x_continuous(expand = expansion(mult = c(.05, .2))) +
  scale_y_continuous(expand = c(.05, 0, .2, 0))
gg+c

gg+a+b+c+plot_layout(ncol=2)

#------------------------------
##3. Breaks-Only certain points shown on x-axis
gg+scale_x_continuous(breaks = c(2, 3, 5, 8))

#------------------------------
#4. Reverse scale
gg
gg+scale_x_reverse()
gg+scale_x_reverse()+scale_y_reverse()
