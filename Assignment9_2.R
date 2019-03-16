library(readr)
library(psych)
View(mtcars)
mtcars
str(mtcars)
describe(mtcars$am)
table(mtcars$am)

# Calculate the P Value for the test in Problem 2.

t.test(mtcars$am,mu=10,conf.level = 0.95)
t.test(mpg~am,data = mtcars)


prop.test(13, 13 + 19, p = 0.4, alternative = "less",
          conf.level = 0.95, correct = FALSE)

# How do you test the proportions and compare against hypothetical props? 
# Test Hypothesis: proportion of automatic cars is 40%.

prop.test(13, 32, p = 0.4, alternative = "less",
          conf.level = 0.95, correct = FALSE)