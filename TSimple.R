# Display "Hello" on your screen
# Program-ID: TSimple.R
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

# only single line comments are available in R

print("Hello")

# paste method allows string concatenation
print.noquote(paste("Hello", "(without the quotes)"))

# note: cat() outputs the objects, concatenating the representations and performs much less conversion than print
cat("Hello", "(without numbering)")

# Output
# [1] "Hello"
# [1] Hello (without the quotes)
# "Hello" (without numbering)