
#################################################################################################################################
# 
# r_basic_commands.R
# Reference - http://www.tutorialspoint.com/r/r_tutorial.pdf
#
#
#################################################################################################################################
install.packages("plotrix")
library("plotrix")

myString <- "Hello, World!"
print (myString)

#vi first_helloworld.r
# My first program in R Programming
myString <- "Hello, World!"
print ( myString)

#rscript first_helloworld.r

###Data Type
#Logical Data Type
v <- TRUE
print(v)
print(class(v))
#Numeric Data Type
v <- 23.5
v1 <- 10
print(class(v))
#Integer Data Type
v <- 2L
print(class(v))
#Complex Data Type
v <- 2+5i
v1 <-5i
print(class(v))
print(class(v1))

#Character Data Type
v <- "TRUE"
print(class(v))
#Raw Data Type
v <- charToRaw("Hello")
print(class(v))
print(v)

###Vectors
# Create a vector.
apple <- c('red','green',"yellow","abc")
print(apple)
# Get the class of the vector.
print(class(apple))

#####List
# Create a list.
list1 <- list(c(2,5,3),21.3,sin)
# Print the list.
print(list1)
print(class(list1))

#####Metrices
# Create a matrix.
M = matrix( c('a','a','b','c','b','a'), nrow=2,ncol=3,byrow = TRUE)
print(M)
print(class(M))
M = matrix( c('a','a','b','c','b','a'), nrow=2,ncol=3,byrow = FALSE)
print(M)
print(class(M))

#####Arrays
# Create an array.
a <- array(c('green','yellow'),dim=c(3,5,1))
print(class(a))
print(a)

#####Factors
# Create a vector.
apple_colors <- c('green','green1','yellow','red','red','red','green')
# Create a factor object - Nominal Data
factor_apple <- factor(apple_colors)
# Print the factor.
print(factor_apple)
min(factor_apple)
summary(factor_apple)
print(nlevels(factor_apple))
print(levels(factor_apple))


# Create a vector.
# Create Ordinal categorical vector 
day_vector <- c('sun', 'mon', 'tue', 'wed', 'thr','sat','fri')
# Convert `day_vector` to a factor with ordered level
factor_day <- factor(day_vector, order = TRUE, 
                     levels =c('sun', 'mon', 'tue', 'wed', 'thr', 'fri','sat'),
                     labels = c(1,2,3,4,5,6,7)
                     )
# Print the new variable
day_vector
factor_day
levels(factor_day)
nlevels(factor_day)
min(factor_day)
max(factor_day)
----

######Data Frame
# Create the vectors for data frame.
name1 <- c("Laxman","a","b",'c','x')
name4 <- c("Laxman","a","b","c","x")
c("Laxman","a","b",'c','x') -> name2
5 -> x
name3 = c("Laxman","a","b",'c','x')
print(name3)
print(name2)
print(name1)
  
name <- c("Suresh","Bimal","Geeta","Reeta","Kamal","Kamala","Hari")
height <- c(132,151,162,139,166,147,122)
weight <- c(48,49,66,53,67,52,40)
gender <- c("male","male","female","female","male","female","male")
department <- c("IT","Admin","Admin","Marketing","IT", "HR", "HR")
position <- c("Section Officer","Section Officer","Senior Assistant","Section Officer",
              "Senior Assistant", "Section Officer", )

# Create the data frame.
input_data <- data.frame(name,height,weight,gender,department,position)
print(input_data)
summary(input_data)
#gives error as position is nominal, need to make it as ordinal if we want order operation
min(input_data$position)
input_data$position <- factor(input_data$position, 
                              labels = c(1,5,6,10), 
                              levels = c("-","Senior Assistant","Section Officer","Executive"),
                              ordered = TRUE)
min(input_data$position)
max(input_data$position)
print(input_data)
summary(input_data)
min(input_data$height)
max(input_data$height)
------
  
# Assignment using equal operator. 
var.1 = c(0,1,2,3) # Assignment using leftward operator. var.2 <- c("learn","R") 
print(var.1)
# Assignment using rightward operator.
c(TRUE,1) -> var.3 

print(var.1)
cat ("var.1 is ", var.1 ,"\n")
cat ("var.2 is ", var.2 ,"\n")
cat ("var.3 is ", var.3 ,"\n")

# List the variables starting with the pattern "var".
print(ls(pattern="var")) 


# Delete the variables
var.3 <- 50
print(var.3)
rm(var.3)
print(var.3)

#Removing all variables
rm(list=ls())




# R Operators
#Arthimatic Operators, +, -,x,/,%%,^ can be applied 
a <- 5
5 -> b
print(a+b)

a <<- 5
5 ->> b
print(a+b)

a = 5
b = 5
print(a+b)


v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v+t)

v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v%%t)

#Relational Operators, >, <, <=, >=, ==, !=
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v>t)

v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v!=t)



#Logical Operators, &, |, !, &&, ||, 
v <<- c(3,1,TRUE,2+3i)
t <- c(4,1,FALSE,2+3i)
print(v&t)

print(v|t)

a <- 5
5 -> b
print(a+b)

a <<- 5
5 ->> b
c <- a+b
print(a+b)



#Other Operators - :(series), %in%(identify vector), %*%(multiply with its transpose),%>%(Similar to Pipes in Unix)
M = matrix( c(2,6,5,1,10,4), nrow=2,ncol=3,byrow = TRUE)
t = M %*% t(M)
print(t)
print(1:8 %>% sum %>% sqrt)



print(1:8)
 function >>> function1 >> 


a <-seq(1:10)

#Decision maing in R
# if...else...
x <- c("what","is","truth")
if(5<10){
  print("Truth is found")
} else {
  print("Truth is not found")
}

# if...else if...else s
x <- c("what","is","truth")
if(40<20){
  print("Truth is found the first time")
} else if ("truth" %in% x) {
  print("truth is found the second time")
} else {
  print("No truth found")
}
<
  <
  <=
  
  print("Suresh" %in% c("Suresh","RAM"))
SELECT * FROM EMP WHERE EMP_NAME IN ("SURESH","RAM")

# switch case

Case when
Decode()

x <- switch(
  4,
  "first",
  "second",
  "third",
  "fourth"
)
print(x)

switch("color", "color" = "red", "shape" = "square", "length" = 5)
switch(<<<variabl>>>>>", "color" = "red", "shape" = "square", "length" = 5)

#Loop Statements in R
for looo
do while
while { }

#Repeat
v <- c("Hello","loop")
cnt <- 2
repeat{
  print(v)
  cnt <- cnt+1
  if(cnt > 5){
    break
  }
}

#While Loop
v <- c("Hello","while loop")
cnt <- 2
while (cnt < 7){
  print(v)
  cnt = cnt + 1
}

#For Loop
v <- seq(1:4)
for ( i in v) {
  print(i)
}

#Break Statement
v <- c("Hello","loop")
cnt <- 2
repeat{
  print(v)
  cnt <- cnt+1
  if(cnt > 5){
    break
  }
}

#Next Statement
#Notice, which letter will not be printed
v <- LETTERS[1:6]
for ( i in v){
  if (i == "D"){
    next
    #print ("test here")
  }
  print(i)
}


####R Function
#set of statements organized together to perform a specific task.
#Built in function
# Create a sequence of numbers from 32 to 44.
print(seq(32,44))
# Find mean of numbers from 25 to 82.
print(mean(25:82))
# Find sum of numbers frm 41 to 68.
print(sum(41:68))

#User Defined Function
# Create a function to print squares of numbers in sequence.
new <- function(a) {
  for(i in 1:a) {
    b <- i^2
    print(b)
  }
}
# Call the function new.function supplying 6 as an argument.
new.function(2)
new.function(4)
new(5)
new(5)

# Create a function with arguments.
new.function <- function(a,b,c=1) {
  result <- a*b+c
  print(result)
}
# Call the function by position of arguments.
new.function(5,3,11)
# Call the function by names of the arguments.
new.function(a=11,b=5,c=3)
# Call the function by default argument
new.function(a=11,b=5)

update t1 set salary=salary*1.1 where ...

#Lazy Evaluation of function
#Arguments to functions are evaluated lazily, which means so they are evaluated only when
#needed by the function body.
#Example - ****produce error when it uses b***
# Create a function with arguments.
new.function <- function(a, b) {
  print(a^2)
  print(a)
  print(b)
}
# Evaluate the function without supplying one of the arguments.
new.function(6)

#String Operations
a <- 'Start and end with single quote'
print(a)
b <- "Start and end with double quotes"
print(b)
c <- "single quote ' in between double quotes"
print(c)
d <- 'Double quotes " in between single quote'
print(d)

#String Manipulation, paste - sep: seperator, collapse: remove space between two string
a <- "Hello"
b <- 'How'
c <- "are you? "
print(paste(a,b,c))
print(paste(a,b,c, sep = "-"))
print(paste(a,b,c, sep = "", collapse = ""))

#Formatting Numbers and String
#Syntax - format(x, digits, nsmall,scientific,width,justify = c("left", "right", "centre","none")) 
# Total number of digits displayed. Last digit rounded off.
)
result <- format(23.123456, digits = 3)
print(result)
# Display numbers in scientific notation.
result <- format(c(6, 13.14521), scientific = TRUE)
print(result)
# The minimum number of digits to the right of the decimal point.
result <- format(23.47, nsmall = 5)
print(result)
# Format treats everything as a string.
result <- format(6)
print(result)
# Numbers are padded with blank in the beginning for width.
result <- format(13.7, width = 3)
print(result)
# Left justify strings.
result <- format("Hello",width = 8, justify = "l")
55->0055
555-0555
5555-5555
print(result)
# Justfy string with center.
result <- format("Hello",width = 8, justify = "c")
print(result)

#Other String Funcctions:
result <- nchar("Count me")
print(result)
# Changing to Upper case.
result <- toupper("Changing To Upper")
print(result)
# Changing to lower case.
result <- tolower("Changing To Lower")
print(result)
# Extract characters from 5th to 7th position.
result <- substring("Extract", 5, 7)
print(result)


#R Vectors
# Atomic vector of type character.
print("abc");
# Atomic vector of type double.
print(12.5)
# Atomic vector of type integer.
print(63L)
# Atomic vector of type logical.
print(TRUE)
# Atomic vector of type complex.
print(2+3i)
# Atomic vector of type raw.
print(charToRaw('hello'))

#Multiple Element Vector
# Creating a sequence from 5 to 13.
v <- 5:13
print(v)
# Creating a sequence from 6.6 to 12.6.
v <- 6.6:12.6
print(v)
v <- seq(6.6,12.6, by=0.1)
print(v)
# If the final element specified does not belong to the sequence then it is discarded.
v <- 3.8:11.4
print(v)
# Create vector with elements from 5 to 9 incrementing by 0.4.
print(seq(5, 9, by=0.4))

# Accessing vector elements using position.
t <- c("Sun","Mon","Tue","Wed","Thurs","Fri","Sat")
u <- t[c(2,3,6)]
print(u)
# Accessing vector elements using logical indexing.
# Where, 1st and 6th position are true, and give 1st and 6th value
v <- t[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE)]
print(v)
# Accessing vector elements using negative indexing.
# Removing 2nd and 5th
x <- t[c(-2,-5)]
print(x)
# Accessing vector elements using 0/1 indexing.
# Only getting the last value
y <- t[c(0,0,0,0,0,0,1)]
print(y)

#Vector Manipulation
# Create two vectors.
v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11,0,8,1,2)
# Vector addition, remember equal #items should be there in each vector 
# (Exception - Vector Element Recycle)
add.result <- v1+v2
print(add.result)
# Vector substraction, remember equal #items should be there in each vector
# (Exception - Vector Element Recycle)
sub.result <- v1-v2
print(sub.result)
# Vector multiplication, remember equal #items should be there in each vector
# (Exception - Vector Element Recycle)
multi.result <- v1*v2
print(multi.result)
# Vector division, remember equal #items should be there in each vector
# (Exception - Vector Element Recycle)
divi.result <- v1/v2
print(divi.result)

#Vector Element Recycle
v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11)
# V2 becomes c(4,11,4,11,4,11) in the runtime(important concept)
add.result <- v1+v2
print(add.result)
sub.result <- v1-v2
print(sub.result)

#Vector Element Sorting
v <- c(3,8,4,5,0,11, -9, 304)
# Sort the elements of the vector.
sort.result <- sort(v)
print(sort.result)
# Sort the elements in the reverse order.
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)
# Sorting character vectors.
v <- c("Red","Blue","yellow","violet")
sort.result <- sort(v)
print(sort.result)
# Sorting character vectors in reverse order.
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)

###########################################
#Reference - http://www.tutorialspoint.com/r/r_tutorial.pdf
###########################################

#################################################################################################################################

###########################################
# Customer Segmentation using RFM Analysis - Recency Frequency Monetry
#
# Reference - https://www.kaggle.com/hendraherviawan/customer-segmentation-using-rfm-analysis-r
# Reference - https://github.com/rsquaredacademy/rfm
#
###########################################

#################################################################################################################################
#install.packages("rfm")
library(rfm)

library(data.table)
library(dplyr)
library(ggplot2)
#library(stringr)
#library(DT)
library(tidyr)
library(knitr)
library(rmarkdown)


#########################
########Data Load
#########################
setwd(dirname(rstudioapi::getSourceEditorContext()$path))
setwd('/Users/Workspace/Mphil_Study/DS/RFM/')
df_data <- fread('data.csv')

summary(df_data)

#Basic overview of loaded data
summary(df_data)

#########################
###Data Cleaning
#########################
df_data <- df_data %>% 
  mutate(Quantity = replace(Quantity, Quantity<=0, NA),
         UnitPrice = replace(UnitPrice, UnitPrice<=0, NA))

df_data <- df_data %>%
  drop_na()

#See Summary of data after data cleaning
summary(df_data)

#############
## Recode columns
############
df_data <- df_data %>% 
  mutate(InvoiceNo=as.factor(InvoiceNo), StockCode=as.factor(StockCode), 
         InvoiceDate=as.Date(InvoiceDate, '%m/%d/%Y %H:%M'), CustomerID=as.factor(CustomerID), 
         Country=as.factor(Country))

df_data <- df_data %>% 
  mutate(total_dolar = Quantity*UnitPrice)

summary(df_data)

### Calculate RFM 
analysis_date <- lubridate::as_date('2010-12-01', tz = 'UTC')
rfm_result <- rfm_table_order(data = df_data, customer_id = CustomerID, order_date = InvoiceDate, revenue = total_dolar, analysis_date = analysis_date)
print(class(rfm_result))


rfm_result_df <- as_data_frame(rfm_result)
summary(rfm_result)
print(rfm_result)


#### Data Visualization - More to cover when we read about EDA(Explotry Data Analysis)
rfm_heatmap(rfm_result)
rfm_bar_chart(rfm_result)
rfm_histograms(rfm_result)
rfm_order_dist(rfm_result)
rfm_rm_plot(rfm_result)
rfm_fm_plot(rfm_result)
rfm_rf_plot(rfm_result)

# RFM Analysis End here
###################################################

#apply - apply(X, MARGIN, FUN), where Margin=1 for col or 2 for row or c(1,2) and manipulation in row and col
#FUN refers the mean, median, sum, min, max and even user-defined functions can be applied>
m1 <- matrix(C<-(rep(2,10)),nrow=5, ncol=6)
m1
a_m1 <- apply(m1, 2, sum)
a_m1
apply(m1, 1, sum)
m2 <- apply(m1,c(1,2), sum)

#######tapply - tapply(X, INDEX, FUN = NULL)
#mean, median, sum, min, max and even user-defined functions can be applied>
# Number of arguments should be same
##
t1 <- c("a","a","b")
t1f <- factor(t1)
t2 <- c(1,2,3)
tapply(t2,t1f,min)


##
  state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa",
             "qld", "vic", "nsw", "vic", "qld", "qld", "sa", "tas",
             "sa", "nt", "wa", "vic", "qld", "nsw", "nsw", "wa",
             "sa", "act", "nsw", "vic", "vic", "act")
statef <- factor(state)
incomes <- c(60, 49, 40, 61, 64, 60, 59, 54, 62, 69, 70, 42, 56,
             61, 61, 61, 58, 51, 48, 65, 49, 49, 41, 48, 52, 46,
             59, 46, 58, 43)
incmeans <- tapply(incomes, statef, sum)
##
#####lapply - returns list,applied to all values
movies <- c("SPYDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies_lower <-lapply(movies, tolower)
str(movies_lower)

movies_upper <-lapply(movies_lower, toupper)
movies_upper
###
#### sapply() function does the same jobs as lapply() function but returns a vector.
d = matrix(1:12, 6,2)
print(d)
sapply(d,mean)

#### sapply() function to the columns of the dataframe 
# and the output will be in the form of vector
sample <- c("This","is","sample","vector")
sapply(sample,nchar)

name <- c("Suresh","Bimal","Geeta","Reeta","Kamal","Kamala","Hari")
name.nchar <- sapply(name,nchar)
input_data <- data.frame("Employee.Name" = name, "Employee.Name.Char" = name.nchar)
print(input_data)

input_data1 <- data.frame(name,name.nchar)
colnames(input_data1) <- c("Employee.Name","Emplyoyee.Name.Char")
print(input_data1)

#### rapply() -  Recursive version of lapply
X <- list(list(a = pi, b = list(c = 1:1)), d = "a test")
rapply(X, function(x) x, how = "replace")
rapply(X, sqrt, classes = "numeric", how = "replace")
rapply(X, nchar, classes = "character",
       deflt = as.integer(NA), how = "list")
rapply(X, nchar, classes = "character",
       deflt = as.integer(NA), how = "unlist")
rapply(X, nchar, classes = "character", how = "unlist")
rapply(X, log, classes = "numeric", how = "replace", base = 2)


