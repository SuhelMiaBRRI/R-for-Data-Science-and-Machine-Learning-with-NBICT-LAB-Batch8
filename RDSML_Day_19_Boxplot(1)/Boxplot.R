#Loading the data set
myData=ToothGrowth

#Converting the variable data from a numeric factor variable
myData$dose = as.factor(myData$dose)

library(ggplot2)

#Basic plot
ggplot(myData, aes(x= dose, y= len))+
  geom_boxplot()

# Rotating the boxplot
ggplot(myData, aes(x= dose, y= len))+
  geom_boxplot()+
  coord_flip()

# Notched boxplt
ggplot(myData, aes(x= dose, y= len))+
  geom_boxplot(notch = T)

# Changing outlayer color, shape and size
ggplot(myData, aes(x= dose, y= len))+
  geom_boxplot(outlier.color ="red", outlier.shape = 8, 
               outlier.size =3)

# Choosing which item to display
ggplot(myData, aes(x= dose, y= len))+
  geom_boxplot(outlier.color ="red", outlier.shape = 8, 
               outlier.size =3)+
  scale_x_discrete(limits = c("2"))

#Changing box plot line colors by groups
ggplot(myData, aes(x= dose, y= len, color = dose))+
  geom_boxplot()

# changing the item order
ggplot(myData, aes(x= dose, y= len, color = dose))+
  geom_boxplot()+
  scale_x_discrete(limit = c("2","0.5","1"))

# Box plot with multiple groups
ggplot(myData, aes(x= dose, y= len, fill = supp))+
  geom_boxplot()

# Changing the position
ggplot(myData, aes(x= dose, y= len, fill = supp))+
  geom_boxplot(position = position_dodge(1))


