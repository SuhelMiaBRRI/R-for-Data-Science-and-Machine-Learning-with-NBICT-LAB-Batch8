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
nycflights13::flights
summary(distance)
describe(distance)

demo= cbind(arr_delay, dep_delay, distance)
demo
describe(demo)
