#Importing the dataset
dataset=read.csv("data.csv")

# Importin the library
library(ggplot2)

# Creating the histogram
ggplot(dataset, aes(x=weight))+
  geom_histogram(color="white")

#Changing histogram plot line colors by groups
ggplot(dataset, aes(x=weight, fill=sex))+
  geom_histogram(color="white", alpha=.5, position="identity")

# We can change the position adjustment 
#to use for overlapping points on the layers
#Possible values for the argument position are
# "identity", "stack", "dodge", Default value is "stack"

#Inter leaved histograms
ggplot(dataset, aes(x=weight, fill=sex))+
  geom_histogram(color="white", alpha=0.5, position="dodge")+
  theme(legend.position="top")

# The plyr package is used to calculate 
#the mean weight of each group

#install.packages("plyr")
library(plyr)
library(plyr)
group_means = ddply(dataset, "sex", summarise, grp.mean = mean(weight))
group_means

#Adding mean lines
myplot=ggplot(dataset, aes(x=weight, fill=sex))+
  geom_histogram(color="white", alpha=.5, position="dodge")+
  geom_vline(data=group_means, aes(xintercept=grp.mean,color=sex), 
             linetype="dashed")+
  theme(legend.position="top")

myplot

# Using custom color palettes
myplot+scale_color_manual(values=c("#999999", "#E69F00"))+
  scale_fill_manual(values=c("#999999", "#E69F00"))

# Using color brewer color palettes
myplot+scale_color_brewer(palette="Dark2")+
  scale_fill_brewer(palette="Dark2")

# Using grey scale
myplot+ scale_color_grey()+scale_fill_grey()+
  theme_classic()
