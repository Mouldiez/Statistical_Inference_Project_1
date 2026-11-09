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



#sample (repeat 1000)
m <- 1000
#size of sample taken for sample mean
n <- 10
#now i take my sample of 10, find the mean and do this 1000 times

#b = the observation of the poisson dist experiment

mean_10 <- array(0, dim = m)
for (i in 1:m){
  b <- sample(poisson7, size = n, replace = TRUE)
  mean_10[i] <- mean(b)
  
}

hist(mean_10, freq = FALSE, ylim = c(0,0.6), main = "Empirical distribution vs CLT normal curve",
     xlab = "sample means", ylab = "frequency")
lines(seq(min(mean_10),max(mean_10), by = 0.01),
      dnorm(seq(min(mean_10),max(mean_10), by = 0.01),
            mean = mean(mean_10),
            sd = sqrt(var(mean_10))), 
      col = "purple")
legend("topleft", c("empirical distribution", "CLT normal curve"), pch = c(19,19), col = c("gray", "purple"))

#mean and standard dev from CLT and original distribution
mean(mean_10)
sqrt(var(mean_10))
mean(b)
sqrt(var(b))
 


#c 
#repeat b but with n =30
n <- 30
mean_30 <- array(0, dim = m)
for (i in 1:m){
  b <- sample(poisson7, size = n, replace = TRUE)
  mean_30[i] <- mean(b)
  
}
hist(mean_30, freq = FALSE, ylim = c(0, 1),main = "Empirical distribution vs CLT normal curve",
     xlab = "sample means", ylab = "frequency")
lines(seq(min(mean_30),max(mean_30), by = 0.01),
      dnorm(seq(min(mean_30),max(mean_30), by = 0.01),
            mean = mean(mean_30),
            sd = sqrt(var(mean_30))), 
      col = "purple")
legend("topright", c("empirical distribution", "CLT normal curve"), pch = c(19,19), col = c("gray", "purple"))

#mean and standard dev from CLT and original dist
mean(mean_30)
sqrt(var(mean_30))
mean(b)
sqrt(var(b))


#d
#repeat b but with n = 100
n <- 100
mean_100 <- array(0, dim = m)
for (i in 1:m){
  b <- sample(poisson7, size = n, replace = TRUE)
  mean_100[i] <- mean(b)
  
}
hist(mean_100, freq = FALSE, ylim = c(0,2),
     main = "Empirical distribution vs CLT normal curve",
     ylab = "frequency", xlab = "sample means") #histogram of CLT normal dist associated to poisson dist
lines(seq(min(mean_100),max(mean_100), by = 0.01),
      dnorm(seq(min(mean_100),max(mean_100), by = 0.01),
            mean = mean(mean_100),
            sd = sqrt(var(mean_100))), 
      col = "purple")
legend("topleft", c("empirical distribution", "CLT normal curve"), pch = c(19,19), col = c("gray", "purple"))

#mean and standard dev from CLT and original dist
mean(mean_100)
sqrt(var(mean_100))
mean(b)
sqrt(var(b))