#Matrix in R
staff_number=c(15,20,25,17,19,12)
family_member=c(18,46,50,60,55,45)
monthly_income=c(50,45,60,100,65,56)

# Creating matrix
staff_number_mat=matrix(staff_number)
staff_number_mat
staff_number

family_member_mat=matrix(family_member)
family_member_mat
family_member

monthly_income_mat=matrix(monthly_income)
monthly_income_mat
monthly_income

# Joining three columns in a matrix
staff_data=c(staff_number, family_member,monthly_income )
staff_matrix=matrix(staff_data, byrow=FALSE, nrow=6)
staff_matrix


#Naming rows and columns
colnames(staff_matrix)=c('Num', 'Mem', 'Income')
staff_matrix

# selecting an element from matrix
staff_matrix[6,1]

# data frame in R
staff_names=c('M', 'K', 'L', 'N', 'P')
working_hours=c(12,8,10,6,7)
gender=c("Female", "Male", "Male", "Female", "Male" )
Male=c(FALSE,TRUE,TRUE,FALSE,TRUE)
sta_data=data.frame(staff_names,working_hours, gender)
summary(sta_data)

mean(sta_data$working_hours)
max(sta_data$working_hours)
min(sta_data$working_hours)
median(sta_data$gender)
mode(sta_data$gender)
