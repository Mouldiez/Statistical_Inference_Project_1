#Part b
#Perform experiment 10000 times with all the combined outcomes.

#i)
#creating objects balanced coin and die.
coin <- 0:1
die <- 1:6 

#experiment 
#To simulate the coin toss and dice roll 
toss <- sample(coin, size = 10000, replace = TRUE)
roll <- sample(die, size = 10000, replace = TRUE)

#Create a function so that experiment Z = X + Y is possible
tossnroll <- function() {
  data.frame(toss, roll)
}

#exists("tossnroll")
#is.function(tossnroll)
#class(tossnroll)

results <- tossnroll()
head(results)
tossnroll()
View(results) #to view the table

#Making contingency table to show frequencies.
addmargins(table(results$toss,results$roll))
addmargins(prop.table(table(results$toss,results$roll)))

#not exactly 1/12 but around that value.


#ii)
#calculating mean(expected value), variance and covariance.
#toss
mean(toss)
var(toss)
#roll
mean(roll)
var(roll)

var(toss, roll) #covariance


