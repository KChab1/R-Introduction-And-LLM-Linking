# Test Loop: while, for, nested loops (1-D Arrary and 2-D Array)
# Program-ID: TLoop.R
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


# note: index for data structures starts at 1
# c() creates a vector [one-dimensional]
vextor_a <- c(1, 2, 3)

print("Vector a: ")
print(a)

cat("\n");

i <- 1
print.noquote("Test while loop: 1-D Vector")
while (i <= 3) {
  print.noquote(a[i])
  i <- i + 1
}

cat("\n");

# matrix(vector, nrow, ncol) creates a matrix [two-dimensional]
# vector - the data items of same type
# nrow - number of rows
# ncol - number of columns
# byrow (optional) - if TRUE, the matrix is filled row-wise. By default, the matrix is filled column-wise.
matrix_b <- matrix(c(10, 20, 30, 40, 50, 60, 70, 80, 90), nrow = 3, ncol = 3, byrow = FALSE)

print("Matrix b")
print(matrix_b)

cat("\n");

print.noquote("Test for loop: 2-D Matrix ")
# iterate through each elements of numbers column-wise
for (item in matrix_b) {
  print(item)
}

cat("\n");

# array(vector, dim = c(nrow, ncol, nmat)) creates an array [multi-dimensional]
# vector - the data items of same type
# nrow - number of rows
# ncol - number of columns
# nmat - the number of matrices of nrow * ncol dimension
array_c <- array(c(1:9), dim = c(3,3))

print("Array c")
print(array_c)

cat("\n");

i <- 1
print.noquote("Test nested loop with break: 2-D Array")
while (i < 5) {
  for (item in array_c) {
    print(item)
    # break the loop if number is 2
    if( item == 2) {
      break
    }
  }
  i <- i + 1
}

cat("\n");

# list() creates a list, items do not need to be the same data types
list_d <- list("Farmers", 72, Inf)

print("List d")
print(list_d)

print.noquote("Test for loop: 1-D List")
for(item in list_d) {
  print(item)
}