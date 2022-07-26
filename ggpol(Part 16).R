require(ggplot2)
require(ggpol)

#Indian Political Parties and their seats 
attach(parliament)

#===========Arc bar==================
ggplot(parliament)+
  geom_arcbar(aes(shares=Seats,
                  r0=5, r1=10,
                  fill=Parties),
              sep=0.1)+
  scale_fill_manual(values = Color)+
  coord_fixed()

#===========Parliament===============
ggplot(parliament)+
  geom_parliament(aes(seats=Seats,
                      fill=Parties), 
                      color="black")+
  scale_fill_manual(labels=Parties,
                    values = Color)+
  coord_fixed()+
  theme_void()

#===========

colours()
