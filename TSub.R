# Test Subprograms: Built-in functions; Call by Value and Call by Reference
# Program-ID: TSub.R
# Author:     We R Farmers (Kody Chabaud, Stephen Legnon, Shanna O'Quinn, Deanna Short)
# OS:         Windows 10
# Note: 
#   Must have both R and RStudio installed (https://posit.co/download/rstudio-desktop/)
#   The following instructions are used to edit and run this program.
#     1) Open RStudio. In the Right Lower Window, press the three dots and
#       navigate to the folder containing the desired file.
#     2) Double click the file to open it. This will open the file in the left
#       upper window.
#     3) To run the entire document press the Ctrl+Shift+S (or use the Source toolbar button)

vector_var <- c(3, 5, 2, 3, 1, 4)
cat("Vector: \n")
print(vector_var)
cat("\n")

cat("Built-in Function Examples using vector_var: \n")

print(paste("Min: ", min(vector_var)))
print(paste("Mean: ", mean(vector_var)))
print(paste("Median: ", median(vector_var)))
print(paste("Sum: ", sum(vector_var)))
print(paste("Range: ", range(vector_var)))
print(paste("Length: ", length(vector_var)))
print("Sort by descending: ")
print(sort(vector_var, decreasing=TRUE)) #does not change the order of the vector passed
print(paste("Compactly display structure: ", str(vector_var)))
print(paste("Exists (vector_var): ", exists('vector_var')))
print(paste("Exists (Vector_Var): ", exists('Vector_Var'))) # Shows case sensitive

cat("\n")

i1 <- 1L # to add
i2 <- 2L # to add
i3 <- 0L # for result

summation <- function(n1, n2, n3){
  n3 <- n1 + n2
}

# Only pass by value in R, creates "copies" of objects, objects in R are immutable
print(paste("i1, i2, i3 before function call: ", i1, i2, i3))
print(paste("Summation function result: ", summation(i1, i2, i3)))
print(paste("i1, i2, i3 after function call: ", i1, i2, i3))

cat("\n")

# create a vector with values 1 through 10
number_vector <- 1:10

cat("number_vector before function: \n")
print(number_vector)

# show still only pass by value on a vector
pass_by_value <- function(x) {
  i = 1L # for iterating through loop
  for (item in number_vector) {
    item[i] <- 99
    i <- i + 1
  }
}

cat("number_vector after function: \n")
pass_by_value(number_vector)
print(number_vector)

cat("\n")


# pseudo call by reference using eval.parent(substitute())
# replaces the argument value in the parent environment so that the function 
# looks like it implements the call by reference evaluation 
pseudo_call_by_reference <-function(x,value){
  eval.parent(substitute(x<-value))
}

test_value <- 1

cat("test_value before pseudo call by reference function: \n")
print(test_value)

cat("test_value after pseudo call by reference function: \n")
pseudo_call_by_reference(test_value, 99)
print(test_value)

cat("\n")

# R has 4 datatypes mostly through packages that provide mutable objects or 
# pass by reference semantics.
# 1) R6 Classes 2) environments 3) data.table 4) listenv

# mutates a vector outside of a function
cat("Exmaple showing vectors can be mutated outside of functions: \n")
cat("number_vector before loop: \n")
print(number_vector)

for(i in 1:10){
  number_vector[i] <- 99
}

cat("number_vector after loop: \n")
print(number_vector)

cat("\n")

# give environment access to create mutable object
x <- new.env()
x$y <- 1:10

# Now x can be passed by reference with no copy assigned to the function. 
# So when you change the object inside the function original object is changed.
descendVector <- function(x){
  x$y <- 10:1
}

cat("Example showing mutating vector through function: \n")
cat("x before descend function: \n")
print(x$y)

cat("x after descend function: \n")
descendVector(x)
print(x$y)