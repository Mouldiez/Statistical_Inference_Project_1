#Part b
#Perform experiment 10000 times with all the combined outcomes.

#i)
#creating objects balanced coin and die.
coin <- 0:1
die <- 1:6 

#experiment 
#To simulate the coin toss and dice roll 
toss <- sample(coin, size = 10000, replacement = TRUE)
roll <- sample(die, size = 10000, replace = TRUE)

#Create a function so that experiment Z = X + Y is possible
tossnroll <- function() {
  data.frame(toss, roll)
}

results <- tossnroll()
head(results)
dim(results)

