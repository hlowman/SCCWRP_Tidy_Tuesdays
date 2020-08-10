# Tidy Tuesday Week 1
# Heili Lowman
# August 11, 2020

#### Intro ####

# Comment early and often.

# Create a new variable.
leaf <- 3 + 8

# Instead of pressing "Enter", like you would in the console, you should get in the habit of using one of the shortcuts below:

# To run the current line:
# Mac: Command + Enter
# PC: Control + Enter

# To run the entire script:
# Mac: Command + Shift + Enter
# PC: Control + Shift + Enter

# Practicing with some more variables.

tree <- 10 + 15

forest <- leaf * tree

# Now, take a moment to create your own variables and get comfortable with the process.

# ... PAUSE ...

# SAVE before going any further.

#### Datasets ####

# R has lots of pre-loaded data, which you can browse by typing:

data()

# Using the iris package, let's see how to examine a dataset.

View(iris)

# To look at the top part of the dataset:

head(iris)

# To look at the bottom part of your dataset:

tail(iris)

# You can call certain columns of a dataset using the dollar sign ($).

iris$Sepal.Length

# And you can use these columns as you would the variables we played around with earlier.

mean_sl <- mean(iris$Sepal.Length)

max_pw <- max(iris$Petal.Width)

min_sp <- min(iris$Species) # Note: this will give you an error.

# Let's figure out why that might be using the str() function, which allows you to determine the structure of your data:

str(iris)

# num is numerical.
# Factor is categorical.
# Other forms include character, integer, date, etc.

# Now, take a moment to pick out another dataset from data().
# Use the str() function to look at the structure of the data.
# And calculate the minimum value of a numeric column.

# ... PAUSE ...

# Remember to save please!

#### Plotting ####

# To load data into R, we need to first load the tidyverse package.

# If you didn't install it last week:

# install.packages("tidyverse")

library(tidyverse)

# Now, let's upload today's dataset - the results of the data training survey.

survey <- read_csv("survey_data.csv")

View(survey)

str(survey)

# And let's go ahead and build a plot of some chosen data with ggplot()

survey_graph <- ggplot(survey, aes(x = Tools, y = Know)) + # Here you call the ggplot() function, the dataset, and tell R the x and y axes.
  geom_point() + # Here you tell R what kind of plot you want.
  ggtitle("Familiar Data Science Tools") + # We'll add a nice descriptive title.
  xlab("Data Tools") + # And an x-axis label.
  ylab("Number of Respondents") # And a y-axis label.

survey_graph

# Let's make some edits.

survey_graph2 <- ggplot(survey, aes(x = Tools, y = Know)) + 
  geom_point(color = "coral1", size = 5) + # Here we'll update color and size of the points.
  ggtitle("Familiar Data Science Tools") + 
  xlab("Data Tools") + 
  ylim(0, 25) + # Here we'll fix the y axis bounds.
  ylab("Number of Respondents") +
  theme_bw() # And remove the grey background.

survey_graph2

# Now, take a moment to pick out another column to plot from "survey".
# Start a new figure (survey_graph3) and type in the correct column name in the y = space.
# Be sure the y axis values are fitting.
# And change the color and size of the points again (more colors in the attached pdf).

# ... PAUSE ...

# Remember to save please! 

# Final fun note, your "####" at each section header has actually generated a handy table of contents for you.

# End of script.