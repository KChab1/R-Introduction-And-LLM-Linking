# Test Data Visualization
# Program-ID: TDataVisual.R
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


# Data visualization appears on the lower right window. Navigate through each with the blue arrows
# data for visualizations
vector_variable <- c(4, 3, 6, 4, 8, 9)

# Barplots can be used to summarize large data in visual form; called with barplot()
# default barplot using vector_variable data set
result <- barplot(vector_variable) 


# barplot of vector_variable with coloring
result <- barplot(vector_variable, 
        main="Southeastern Green.. Kinda", # title
        col="#00a90b", # bar coloring
        xlab = "X-Label", # x-label
        ylab = "Y-Label", # y-label
        names.arg = c("First", "Second", "Third", "Fourth", "Fifth", "Sixth")) # names


# color with 5 different colors
result <- barplot(vector_variable, 
        col=c("green", "gold", "orange", "red", "magenta", "pink"), 
        main="With 5 Colors",
        xlab = "X-Label", 
        ylab = "Y-Label", 
        density = 80, #change the texture
        names.arg = c("First", "Second", "Third", "Fourth", "Fifth", "Sixth"))


# Pie charts represent data visually as a fractional part of a whole, calle with pie()
result <- pie(vector_variable,
              main = "Pie Chart",
              labels = c("First", "Second", "Third", "Fourth", "Fifth", "Sixth"),
              col = c("green", "gold", "orange", "red", "magenta",  "pink")
)

# Plotting : plot() is a generic function that is used to plot points on a graph
# create a vector x
x <- c(1, 2, 3, 4) 

# create a vector y
y <- c(1, 2, 3, 4)

# plot multiple points
plot(x, 
     y, 
     main = "Plot X & Y",
     xlab = "X-Label", 
     ylab = "Y-Label", 
     col = c("navy"),
     type= 'b') # several types are available to determine the style of plotting
