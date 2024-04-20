# Test Data types and Variables
# Numeric, Integer, Logical, Complex, Character, raw, Special R Constants
# as.integer(n), as.numeric(n), as.character(n), as.complex(n), as.Date(n)
# Program-ID: T_Var.R
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

# Assigning Variables:
print.noquote("Variable Assignment: ")
simple = "Simple Assignment;"
left <- "Leftward Assignment;"
"Rightward Assignment;" -> right 

print.noquote(paste(simple, left, right))
cat("\n")

# Reserved words: 
# if, else, repeat, while, function, for, in, next, break, TRUE, FALSE, NaN, NULL, Inf

global <<- 1

true_variable <- TRUE #logical Note: can be declared with TRUE/FALSE or T/F
false_variable <- F #logical
na_variable <- NA #Special R Constant: represents value which is not available
infinity_variable <- Inf #Special R Constant; can be positive or negative (Inf/-Inf)
notANumber_variable <- NaN #Special R Constants
null_variable <- NULL #Special R Constant: to declare an empty R object

print.noquote("Special R Constants:")
print.noquote(paste(true_variable, false_variable))
print.noquote(paste("Type (", typeof(true_variable), ")"))
print.noquote(paste("Class (", class(true_variable), ")"))
cat("\n")

print.noquote(na_variable)
print.noquote(paste("Type (",typeof(na_variable), ")") )
print.noquote(paste("Class (", class(na_variable), ")"))
cat("\n")

print.noquote(infinity_variable)
print.noquote(paste("Type (",typeof(infinity_variable), ")"))
print.noquote(paste("Class (", class(infinity_variable), ")"))
cat("\n")

print.noquote(notANumber_variable)
print.noquote(paste("Type (",typeof(notANumber_variable), ")"))
print.noquote(paste("Class (", class(notANumber_variable), ")"))
cat("\n")

print.noquote(null_variable)
print.noquote(paste("Type (",typeof(null_variable), ")"))
print.noquote(paste("Class (", class(null_variable),")"))
cat("\n")
cat("\n")

print.noquote("Built-In R Constants: ")
print.noquote("List of Uppercase Letters: LETTERS")
print(LETTERS)
print.noquote("List of Lowercase Letters: letters")
print(letters)
print.noquote("List of 3 Letter Abbreviation of Enlish Months: month.abb")
print(month.abb)
print.noquote("Abbreviation of numerical value of constant: pi")
print(pi)
cat("\n")
cat("\n")

# declare Variables for data types
int_variable <- 5L # L represents an Integer
x <- 5 # declared as a double because L is not included
complex_variable <- 3 + 2i # declare imaginary values using i
character_variable <- 'C' # '' for character variables
string_variable <- "2023/10/31" # "" for string variables
raw_variable <- charToRaw('X') # char/string as raw bytes, charToRaw() converts character data to raw data

print.noquote("Variable Types and Classes:")
print.noquote(paste("int_variable (5L): Type:", typeof(int_variable), ", Class: ", class(int_variable)))
print.noquote(paste("x (5): Type:", typeof(x), ", Class: ", class(x)))
print.noquote(paste("complex_variable (3 + 2i): Type:", typeof(complex_variable), ", Class: ", class(complex_variable)))
print.noquote(paste("character_variable ('C'): Type:", typeof(character_variable), ", Class: ", class(character_variable)))
print.noquote(paste("string_variable (⁠⁠\"2023/10/31\"): Type:", typeof(string_variable), ", Class: ", class(string_variable)))
print.noquote(paste("raw_variable (charToRaw('X')): Type:", typeof(raw_variable), ", Class: ", class(raw_variable)))

cat("\n\n")

print.noquote("Type widening and narrowing: ")
int_variable <- 5.55555 
print(paste("int_variable: ", int_variable, typeof(int_variable), class(int_variable)))

int_variable <- 5L
print(paste("int_variable: ", int_variable, typeof(int_variable), class(int_variable)))

cat("\n\n")

print.noquote("Variable Conversions: ")
# as.Date(n) : convert to date
date_conversion = as.Date(string_variable)
print(paste("date_conversion: ", date_conversion, typeof(date_conversion), class(date_conversion)))

# as.integer(n) : convert to integer
integer_conversion = as.integer(x)
print(paste("integer_conversion: ", integer_conversion, typeof(integer_conversion), class(integer_conversion)))

# as.numeric(n) : convert to numeric type (float, double, etc.)
float_conversion = as.numeric(int_variable)
print(paste("float_conversion: ", float_conversion, typeof(float_conversion), class(float_conversion)))

# as.character(n) : convert to character
character_conversion = as.character(int_variable)
print(paste("character_conversion: ", character_conversion, typeof(character_conversion), class(character_conversion)))

# as.complex(n) : convert to complex number (i.e 3+2i)
complex_conversion = as.complex(int_variable)
print(paste("complex_conversion: ", complex_conversion, typeof(complex_conversion), class(complex_conversion)))