# 10. Write a script in R to create a list of cities and perform the following
# 1) Give names to the elements in the list.
# 2) Add an element at the end of the list.
# 3) Remove the last element.
# 4) Update the 3rd Element.

# create a list of cities
x <- list("Pune" , "Hyderabad" , "Banglore")

# 1) Give names to the elements in the list.
x <- list(a="Pune" , b="Hyderabad" , c="Banglore")
names(x)

# 2) Add an element at the end of the list.
y <-list(d="Mumbai")
y

x <- c(x,y)
x

# 3) Remove the last element.
x[[4]]<- NULL
x
# 4) Update the 3rd Element
x[3] <- "Nashik"
x