# Crash course in R
# for Edx's Harvardx Data Science R Basics online course
# Created by Mauro José Pappaterra on February 23rd 2018

# BASIC ARITHMETIC
10 + 10 # sum
10 - 5 # rest
100 / 10 # division
3 * 3 # multiplication

10**3 # power
10^4 # also power
5 %% 2 # modulus

# BUILT IN MATH FUNCTIONS
exp(10)
log(10)
log(x=8,base=2) # same function specifying parameters

mean(c(10,5,10,5)) # returns average value of a given vector

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

# VECTORS / DATAFRAMES
# (a series of values of the same type)
vector <- c(label_1=1, label_2=2, label_3=3, label_4=4) # creates vector
empty_vector <- vector("numeric", 100) # create an empty numeric vector of size 100

temp <- c(Beijing=35,Lagos=88,Paris=42,Rio_de_Janeiro=84, San_Juan=81, Toronto=30)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")
bools <- c(TRUE,TRUE,TRUE,TRUE,FALSE,FALSE,TRUE)

range <- 1:1000 # creates a vector containing all numbers from and including 1 to and including 1000

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

# yet another way to create a data frame
course_grades <- data.frame (students= c("Bobby","Johnny","Philly","Jackie"),
                             exam_1= c(95,50,100,85),
                             exam_2= c(100,60,80,100),
                             exam_3= c(90,40,90,90),
                             passed= c(TRUE, FALSE, TRUE,TRUE),
                             stringsAsFactors = FALSE) # add this last line to prevents strings being turned into factors elements
                           
# From vector 'temp' return the following values...
head(city_temps) # returns the first 6 rows of the dataset from the top
tail(city_temps) # returns the last 6 rows of the dataset from the bottom

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
rank (-numbers) # returns the rank in descending order respectively e.g. -> 1 2 6 3 5 4 7

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
sort(dataset$column_name) # sorts column from lower to higher... same as above
order(dataset$column_name) 
rank(dataset$column_name) 

# basic arithmetic
dataset$column_name + 1000
# ...
# ... etc
# all operations same as a vector's!


# import an external package
library(package_name)
library(dslabs) # package that includes example dataframes
library(dplyr) # package that includes most common operations for data science

# DATA WRANGLING

# Example dataframe
state <- c("California", "Texas", "Louisiana", "Florida", "New York", "Maine")
abbreviation <- c("CA", "TX", "LA", "FL", "NY", "ME")
population <- c(40000000,10000000,25000000,30000000,40000000,2000000)
murders_yearly <- c(1200,1241,4232,3421,34252,5)
murders <- data.frame(state = state, abbreviation = abbreviation, population = population, murders_2015 = murders_yearly) # creates data frame

# Common functions from dplyr package
mutate(murders, murder_rate= murders_2015/population*100000) # creates a new column 'murder_rate', call variables with the dataframe name, murders is now modified! Parameters: mutate (DATAFRAME, new_column = operation on variables
filter (murders, rate <= 0.75) # returns rows were murder rate is equal or below 0.75 Parameters: filter (DATAFRAME, condition)
filter (murders, state != "California") # returns all rows but California
filter (murders, state %in% c("Texas","Lousiana","Florida")) # returns only rows that has any of the given values in the column state
filter (murders, state > 0.5 & population > 1000000) # returns only rows that comply with multiple conditions

select(murders, state, murders_2015, rate) # returns table showing only the specified columns! Parameters: select (DATAFRAME, column_1, column_2, column_n)

murders[order(murders$population),] # order by population column, Notice: YES that EXTRA COMMA goes there!
nrow(murders) # return number of rows

# Combining these functions using the pipe operator %>%
murders %>% select(state, murders_2015, rate) %>% filter(rate <= 0.75)
murders %>% select(abbreviation, rate) %>% filter(rate > 0.75 & population > 10000000) 
murders %>% mutate(murders, murders_2015/population*100000) %>% select(abbreviation, rate) %>% filter(rate > 0.75 & population > 10000000) 
new_murders %>% murders %>% mutate(murders_2015/population*100000) %>% select(abbreviation, rate) %>% filter(rate > 0.75 & population > 10000000) # same same as above

# DATA VISUALIZATION: GRAPHS AND PLOTTING
plot(murders$population,murders$murders_2015) # plot this two columns in a graph with eachother

hist(murders$population) # print histogram of this column

boxplot (population~state,data=murders) # print boxplot with stratified columns (~)


# PROGRAMMING BASICS

# CONDITIONALS

# if and ifelse statements
a <- 15

if (a > 10){
  print("a is bigger than 10")
  } else {
    print("a is smaller or equal to 10")
  }

#ifelse statement (same as if, different syntax)
ifelse (a > 10, print("a is bigger than 10"), print("a is smaller or equal to 10"))

# example of use
# on an array of values
example_1 <- c(10,11,12,13,14,15,16,17,18,19) 

#applies conditional on each element, saves to new array
is_even <- ifelse(example_1 %% 2 == 0, TRUE, FALSE)

# any and all statements
example_2 <- c(TRUE,FALSE,TRUE)
example_3 <- c(FALSE,FALSE,FALSE)
example_4 <- c(TRUE,TRUE,TRUE)
example_5 <- c(-1,0,1)

any (example_2) # returns TRUE if at least one value in the vector is true
any (example_3)
any (example_5 > 0)

all (example_2) # retrns TRUE if all of the values in the vector are true
all (example_4)
all (example_5 > 0)


# FUNCTIONS

# definition of a function
avg <- function (x = 100){ # name, function (parameters), yo can use '=' for assigning a default parameters
  s <- sum(x) # contents of the function
  n <- lengh(x) # the scope for these two definitions is only local
  s/n # returns this
}

avg(c(10,5,10,5)) # returns 7.5
avg(c(5,5,5,5)) # returns 5

identical (avg(i),mean(i)) # returns TRUE if two functions are identical

# FOR STATEMENTS

# example of a for statement
for (i in 1:5){ # for i in a given range
  print(i) # execute this on loop
}

# another example
my_vector <- c(TRUE,TRUE,FALSE,TRUE)
for (i in my_vector){ # for every element i on vector my_vector
  print(i) # execute this on loop
}

# practical example
# 1) define a function`
new_function <- function(n){
  x <- 1:n
  sum(x^2)
}

# 2) create an empty vector for storing results
new_vector <- vector("numeric", 100)

# 3) write a for-loop to call the function within a range and store the results!
for(i in 1:100){
  new_function[i] <- new_function(i)
}

