install.packages ("ggplot2")
library(ggplot2)

dataset=mtcars
dataset
#Generating a basic scatter plot
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point()

#Changing the point size and shape
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point(size=1, shape=18)

#Adding the regression line
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point(size=1, shape=18)+
  geom_smooth(method= lm)

# Removing the confidence interval
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point()+
  geom_smooth(method=lm, se=FALSE)

# loess method
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point()+
  geom_smooth()

# Change the line type and color
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point(size=1, shape=18)+
  geom_smooth(method= lm, linetype="dashed",
              color="darkblue")

#Changing the confidence interval color
ggplot(dataset, aes(x=wt, y=mpg))+
  geom_point(size=1, shape=18)+
  geom_smooth(method= lm, linetype="dashed",
              color="darkblue", fill="darkred")

# Scatter plots with multiple groups

#Converting the cyl column from a numeric 
dataset$cyl=as.factor(dataset$cyl)

#Changing the point shapes the levels cyl
ggplot(dataset, aes(x=wt, y=mpg, shape=cyl))+
  geom_point()

# Changing poin shapes and colors
ggplot(dataset, aes(x=wt, y=mpg, shape=cyl, color=cyl))+
  geom_point()

# Changing point shapes, colors and sizes
ggplot(dataset, aes(x=wt, y=mpg, size =cyl))+
  geom_point()
