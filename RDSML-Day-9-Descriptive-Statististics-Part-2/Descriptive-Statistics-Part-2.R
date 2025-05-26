#Descriptive statistics using the psych package

install.packages("psych")
library(psych)

data()
AirPassengers
BOD   

# Using the New York aurport flight data
install.packages("nycflights13")
attach(nycflights13::flights)

# Lets look at the 6 records using the head () function
head(nycflights13::flights)
distance
summary(distance)
describe(distance)

demo= cbind(arr_delay, dep_delay, distance)
demo
describe(demo)
# Introducing the colnames () function
colnames(demo)= c('Arrival delay', 'Departure Dealy', 'Distance Travelled')
describe(demo)

# Introducing the hist() function
dep_delay
hist (dep_delay)

# How to group descriptive statistics 
head(nycflights13::flights)
summary(carrier)
carrierFact=factor(carrier)
summary(carrierFact)
describeBy(distance, group=carrier)

# Two levels of agrregation
aggregate(distance, by= list(carrier, month), FUN=mean, na.rm=TRUE)
aggregate(distance, by= list(carrier, month), FUN=sd, na.rm=TRUE)

