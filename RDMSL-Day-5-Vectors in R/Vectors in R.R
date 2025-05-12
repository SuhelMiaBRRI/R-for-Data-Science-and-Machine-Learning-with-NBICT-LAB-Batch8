# Vectors in R

#Creating a vector using the  c() command
student_height=c(60, 69, 55, 62)
student_height

# Checking the class of the vector student.height
is.numeric(student_height)
is.logical(student_height)

# R automatically converts numeric to text,
#when you a text item in the vector
b=c(5, 8, 2, "sv")
b
is.numeric(b)
is.character(b)
 
# We can convert data types
# For example from numeric to character
 


#Llogical operator TRUE when converted to
# to nemeric, TRUE converts to 1
# and FALSE converts to 0
d=c(TRUE, FALSE, FALSE,TRUE, FALSE)
d=as.numeric(d)
d

# converting numeric to logical(1 or any number
# other than 0 converts to TRUE, 0 converts to FALSE)
d
class(d)
d

e=c(1,0,0,1,0,23,-7,0)
e=as.logical(e)
e
# Creating sequential Vectio
#Creating a vector starting from 1 to 10
my_seq=c(1:50,80,99,88,60,71)
my_seq
#Creating sequential vector using the seq() function
new_seq = c(seq(1, 10))
new_seq
#Sequence in steps of 3
new_sequence =c(seq(1, 10, by=3))
new_seq
# vectors can have character
names=c("Elias", "Mahfuza", "Ashraf" )
names
class names(names)
