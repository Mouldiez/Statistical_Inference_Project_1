#Central Limit Theorem

#a) 
#Poisson Distribution


poisson7 <- rpois(100, lambda = 7) # Mean = Var = 7. Standard dev is sqrt(7) = 2.646 3.d.p
range(poisson7)

#Theoretical 
tpoi7 <- dpois(0:30, lambda = 7) #theoretical object for poi7

#Empirical 
mean(poisson7)
var(poisson7)
sqrt(var(poisson7))

hist(poisson7, freq = FALSE, col = "purple", main = "Comparing empirical and theoretical plot", xlab = "Outcomes", ylab = "Probabilities")
points(0:30, tpoi7, pch = 19)
legend("topright", c("Empirical", "Theoretical"),pch = c(19,19), col = c("purple","black"))



#b)
#empPoi7 <- sample(poisson7, size = 10000, replace = TRUE)
#empPoi7Results <- data.frame(empPoi7)
#View(empPoi7Results)

#mean(empPoi7)
#var(empPoi7)
#sqrt(empPoi7)


#sample 
m <- 1000
#size of sample
n <- 10
#now i take my sample of 10, find the mean and do this 1000 times

meanArray <- array(0, dim = m)
for (i in 1:m){
  b <- sample(poisson7, size = n, replace = TRUE)
  meanArray[i] <- mean(b)
  
}

hist(meanArray, freq = FALSE)


#c 
#repeat b but with n =30
n <- 30
meanArray <- array(0, dim = m)
for (i in 1:m){
  b <- sample(poisson7, size = n, replace = TRUE)
  meanArray[i] <- mean(b)
  
}
hist(meanArray, freq = FALSE)




#d
#repeat b but with n = 100
n <- 100
meanArray <- array(0, dim = m)
for (i in 1:m){
  b <- sample(poisson7, size = n, replace = TRUE)
  meanArray[i] <- mean(b)
  
}
hist(meanArray, freq = FALSE)