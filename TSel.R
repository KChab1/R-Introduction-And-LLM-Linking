# Test Selections:      if, if-else, nested if-else, ifelse()
# Logical Operators:    &, |, !
# Relational Operators: <, >, ==, <=, >=, !=
# Program-ID: TSel.R
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


i1 <- 1L
i2 <- 2L
i3 <- 3L
i4 <- 4L
i5 <- 5L
i6 <- 6L

# Test a simple if
if (i4 > i1) {
  print.noquote("(i4 > i1)")
}

# Test if-else
if ((i5 < i2) & (i3 >= i2)) {
  print.noquote("(i5 < i2) & (i3 >= i2)")
} else {
  print.noquote("(i5 >= i2) | (i3 < i2)")
}

# Test nested if-else
if (i1 != i2) {
  print.noquote("(i1 != i2)")
} else {
  if((i4 == i5) | (i5 != i6)) {
  print.noquote("(i1 == i2) & ((i4 == i5) | (i5 != i6))")
  }
}

ifelse(i5 == i6, print.noquote("(i5 == i6)"), print.noquote("(i5 != i6)"))

# Output:
#[1] (i4 >  i1)
#[1] (i5 >= i2) | (i3 <  i2)
#[1] (i1 != i2)
#[1] (i5 != i6)