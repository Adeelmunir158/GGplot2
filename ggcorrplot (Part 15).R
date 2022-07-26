
install.packages("ggcorrplot")

require(ggcorrplot)

# Compute a correlation matrix
attach(mtcars)
corr=round(cor(mtcars), 1)
corr

# Compute a matrix of correlation p-values
p=cor_pmat(mtcars)
round(p,2)

# Visualize the correlation matrix
# --------------------------------
# method = "square" or "circle"
ggcorrplot(corr)
ggcorrplot(corr, method = "circle")

# Reordering the correlation matrix
# --------------------------------
# using hierarchical clustering
ggcorrplot(corr, 
           hc.order = TRUE, 
           outline.color = "white")

# Types of correlogram layout
# --------------------------------
# Get the lower triangle
ggcorrplot(corr,
           hc.order = TRUE, 
           outline.color = "white",
           type = "lower")

# Get the upeper triangle
ggcorrplot(corr,
           hc.order = TRUE, 
           type = "upper",
           outline.color = "white")

# Change colors and theme
# --------------------------------
# Argument colors
ggcorrplot(corr,
           hc.order = T, 
           type = "lower",
           outline.color = "white",
           ggtheme = ggplot2::theme_gray,
           colors = c("#6D9EC1", "white", "#E46726")
)
# Add correlation coefficients
# --------------------------------
# argument lab = TRUE
ggcorrplot(corr,
           hc.order = TRUE, 
           type = "lower",
           lab = TRUE,
           ggtheme = ggplot2::theme_dark(),
)
# Add correlation significance level
# --------------------------------
# Argument p.mat
# Barring the no significant coefficient
ggcorrplot(corr,
           hc.order = TRUE,
           type = "lower", 
           p.mat = p
)
# Leave blank on no significant coefficient
ggcorrplot(corr,
           p.mat = p, 
           hc.order = TRUE,
           type = "lower", 
           insig = "blank"
)
# Changing number of digits for correlation coeffcient
# --------------------------------
ggcorrplot(cor(mtcars),
           type = "lower",
           insig = "blank",
           lab = TRUE,
           digits = 1
)
