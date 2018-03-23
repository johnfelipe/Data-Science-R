# Crash course in R
# for Edx's Harvardx Data Science R Basics online course
# created by Mauro José Pappaterra on February 23rd 2018

# BASIC ARITHMETIC
10 + 10 # sum
10 - 5 # rest
100 / 10 # division
3 * 3 # multiplication

# BUILT IN MATH FUNCTIONS
exp(10)
log(10)
log(x=8,base=2) # same function specifying parameters

#get help from R with built in functions
?log
help("exp")

# VARIABLES
a <- 1 # assign 1 to variable a
b <- 2 # assign 2 to variable b
c <- 3 # assign 3 to variable c

d <- "String"
e <- TRUE
f <- FALSE

ls() # return all variables stored in the dataset

class(a) # return type of variable a

# NUMBER SEQUENCES
seq(1,10) # sequence of numbers from a to b
seq(1,100,10) # sequence of number from a to b in sequence of c

seq(1, 100, length.out = 5) # sequence that is increasing by the same amount but is of the prespecified length (5 numbers)

1:10 # sequence of numbers from a to b

x <- 1:5 # save sequence of number 1 to 5 to x
length(x) # the length of object x (5 in the example)
y <- as.character(x) # typecasting: convert to string and save to y
z <- as.numeric(y) # typecasting: convert back to number and save to z

# INTEGERS
w <- 3L
class(3L) # is an integer!
class(3) # is NUMERIC

g <- (3L - 2) # they can be mixed!

class (g) # is NUMERIC!

# VECTORS 
# (a series of values of the same type)
vector <- c(label_1=1, label_2=2, label_3=3, label_4=4) # creates vector

temp <- c(Beijing=35,Lagos=88,Paris=42,Rio_de_Janeiro=84, San_Juan=81, Toronto=30)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")
bools <- c(TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,TRUE)

mix <- c(int=1,string="example",logic=TRUE) # vectors are homogeneous, but converted to string when values are different

# Associate the cost values with its corresponding food item using the function names

# we got
cost <- c(50, 75, 90, 100, 150)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")

# to create a data frame
names(cost) <- food

# or create a data frame associating two vectors (same result as above)
food_cost <- data.frame(name = food, price = cost)

# other example with different vectors
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp) # creates data frame

# From vector 'temp' return the following values...
# the temperatures of the FIRST three cities in the list:
temp[1:3] # or
temp[c(1,2,3)]

# and the temperatures of the LAST three cities in the list:
temp[4:6] # or
temp[c(4,5,6)]

# and the temperature of Paris and San Juan alone:
temp[c(3,5)]

# Let's try some sorting functions
numbers <- c(999, 150, 5, 99, 10, 15, 3)

sort(numbers) # sorts in ascending order e.g.-> 3   5  10  15  99 150 999
order(numbers) # returns the indexes in calling order for ascending ordering e.g.->  7 3 5 6 4 2 1
rank (numbers) # returns the rank in ascending ordering respectively e.g.-> 7 6 2 5 3 4 1

sort(numbers, decreasing=TRUE) # sorts in decreasing order e.g.-> 999 150  99  15  10   5   3
order(numbers, decreasing=TRUE) # returns the indexes in calling order for descending ordering e.g.->  1 2 4 6 5 3 7

max(numbers) # returns max number e.g.-> 999
which.max(numbers) # returns index of max number e.g.-> 1

min(numbers) # returns min number e.g.-> 3
which.min(numbers) # returns index of min number e.g.-> 7

# Basic Arithmetic
numbers + 1 # add +1 to all elements on the vector
numbers - 100 # deducts -100 to all elements on the vectors
numbers * 10 # multiply all elements on the vector by 10
numbers / 10 # divide all elements on the vector by 10

# Built-in Functions
sum(numbers) # sums all numbers in the vector e.g.-> 1281
mean(numbers) # the average number value in the vector e.g.-> 183

# Basic Arithmetic between two different vectors
numbers_b <- c(1, 2, 3, 4, 5, 6, 7) # if we have another vector of the SAME SIZE

numbers + numbers_b # adds both vectors one by one (numbers[i] + numbers_b[i])
numbers - numbers_b # deducts both vectors one by one (numbers[i] - numbers_b[i])
numbers * numbers_b # multiply both vectors one by one (numbers[i] * numbers_b[i])
numbers / numbers_b # divides both vectors one by one (numbers[i] / numbers_b[i])

# Logical Operators
a < b # less than
a <= b # less than or equal to
a > b # greater than
a >= b # greater than or equal to
a == b # exaclty equal to
a != b # not equal to

t <- TRUE
f <- FALSE

!t # not
t | f # or
t & f # and

# Logical Operatos in vectors

# which function
logic_vector <- c(TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE)

which (logic_vector) # returns indexes of TRUE values e.g.-> 1 3 5 7

# match function
vector_a <- c(1,23,45,67,89,100)

match (c(45,100),vector_a) # returns indexes that matches query
match (c(FALSE),logic_vector) # returns indexes that matches query

# %in% function

alphabet <- c("a","b","c","d","e")
query <- c("a","d","f")

query %in% alphabet # returns true if element found e.g.-> TRUE,TRUE,FALSE

# indexes and vectors
index <- (vector_a > 60) # create index variable that store all indexes where condition is TRUE
vector_a [index] # retrieve the data e.g.-> 67 89 100
which(index) # or retrieve the indexes using which e.g. -> 4 5 6


# DATASETS

dataset$column_name # retrieve a column of a dataset

# sorting and ordering datasets
sort(dataset$column_name)
order(dataset$column_name)
rank(dataset$column_name)

# basic arithmetic
dataset$column_name + 1000
# ...
# ... etc
# all operations same as a vector's!


# import an external package
library(package_name)

library(dplyr) # package that includes most common operations for data science





  







