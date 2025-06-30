# Importing the dataset
tooth_data=ToothGrowth

#Creating the for summarizing the data
#based on the grouping variables

data_summary = ddply(data, groupname, fun=summary_func, varnames)
  data_sum = rename(data_sum, c(mean))
}
c(mean = mean(x[[col]], na.rm = TRUE), sd = sd(x[[col]], na.rm = TRUE))
}
data_sum = ddply(data, groupnames, .fun = summary_func, varname)
data_sum = rename(data_sum, c("mean" = varname))
return(data_sum)
}