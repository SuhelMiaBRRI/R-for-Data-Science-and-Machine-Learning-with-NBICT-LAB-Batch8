# Creating data frame
dataset = data.frame(dose =c("D0.5","D1","D2"),
                     len =c(4.2, 10, 29.5))

library(ggplot2)

# Basic barplot
ggplot(data=dataset, aes(x=dose, y=len))+
  geom_bar(stat = "identity")

# Horizontal barplot
ggplot(data=dataset, aes(x=dose, y=len))+
  geom_bar(stat = "identity")+
  coord_flip()

# Changing the width of bars
ggplot(data=dataset, aes(x=dose, y=len))+
  geom_bar(stat="identity", width=0.7)

# Changing colors
ggplot(data=dataset, aes(x=dose, y=len))+
  geom_bar(stat="identity", color="blue",fill="white", width=0.7)

# Minimal theme with blue fill color
ggplot(data=dataset, aes(x=dose, y=len))+
  geom_bar(stat="identity",fill="steelblue")+
  theme_minimal()

#Barplot with labels
# outside bars
ggplot(data=dataset, aes(x=dose, y=len))+
  geom_bar(stat= "identity",fill= "steelblue")+
  geom_text(aes(label = len),vjust=-0.5, size=3, color="#99999F")+
  theme_minimal()

# Inside bars
ggplot(data=dataset, aes(x=dose, y=len))+
  geom_bar(stat= "identity",fill= "steelblue")+
  geom_text(aes(label = len),vjust=1.5, size=3, color="white")+
  theme_minimal()

mycarData = mtcars
# Barplot of counts
# To make a barplot of counts, we will use mtcars dataset

ggplot(data=mycarData, aes(x= factor(cyl)))+
  geom_bar(stat="count",width=0.7, fill="steelblue")+
  theme_minimal()


