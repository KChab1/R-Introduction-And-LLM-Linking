# Taking Input from User
# readline(), scan()
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


# using readline(). The can be called in three different ways: 
# readline(prompt <- "Enter your name")
# readline("Enter your name")
# readline()

inputInt <- readline(prompt <- "Enter your name: ")
inputFloat <- readline("Enter a float: ")
print("Enter a character: ")
inputChar <- readline()

# using scan() to read multiple inputs at the same time
print("Enter 5 words, pressing Enter between each word: ")
inputFiveWords <- scan(what = " ", n = 5)

# scan will not allow a prompt in the method call like readline(), however
# with scan, you can specify the data type by using: 
# scan(what = double()) for double 
# scan(what = ” “) for string 
# scan(what = character()) for character 
# scan allows declaring a maximum list number by passing n = #
# to read file using scan() pass the file name and data type to the scan() method

cat("Name: ", inputInt, "\n")
cat("Float: ", inputFloat, "\n")
cat("Character: ", inputChar, "\n")
cat("Words: ", inputFiveWords, "\n")