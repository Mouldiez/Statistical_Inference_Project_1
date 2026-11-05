#Part a
#ii)
#lambda = 8
#P(Z <= 6), P(Z > 4), P( 3<=Z <= 8)
?poisson
?dpois
?ppois

#P(Z <= 6)
ppois(q=6, lambda = 8, lower.tail = TRUE)
#check: 1- P(Z > 6)
1 - ppois(q = 6, lambda = 8, lower.tail = FALSE)

#P(Z > 4)
ppois(q = 4, lambda = 8, lower.tail = FALSE)
#check: 1 - P(Z = 4, Z =3, Z= 2, Z=1, Z=0)
1 - sum(dpois(x = 0:4, lambda = 8))

#P( 3 <= Z <= 8)
#so P( Z=3, Z = 4, Z = 5, Z = 6, Z = 7, Z =8)
sum(dpois(x = 3:8, lambda = 8))
#check:
1 - ppois(q = 8, lambda = 8, lower.tail = FALSE) - ppois(q = 2, lambda = 8, lower.tail = TRUE)


#Part b 
#i)
#create objects for both distributions
poisson3 <- rpois(n = 10000, lambda = 3)
poisson5 <- rpois(n = 10000, lambda = 5)
  
x <- sample(poisson3, size = 10000, replace = TRUE)
xresults <- data.frame(x)
View(xresults)

y <- sample(poisson5, size = 10000, replace = TRUE)
yresults <- data.frame(y)
View(yresults)

poissondist <- function() {
  data.frame(x, y)
}

results <- poissondist()
View(results)

#ii)
#relative frequency histogram for x and y respectively
xhist <- hist(x, freq = FALSE,
     main = "Relative frequency histogram of X",
     xlab = "x",
     ylab = "frequency",
     col = "purple")

points(dpois(0:10000, x = 0:10000, lambda = 3), pch = 19, col = "black")
xpmf <- dpois(x = 0:10000, lambda = 3)
head(xpmf)


yhist <- hist(y, freq = FALSE,
     main = "Relative frequency histogram of Y",
     xlab = "y",
     ylab = "frequency",
     col = "pink")

points(dpois(0:10000, x = 0:10000, lambda = 5),pch =19, col = "black")
ypmf <- dpois(x = 0:10000, lambda = 5)
head(ypmf)

#plot both x and y pmf on the same axis
plot(0:10000, xpmf, col = "purple", xlim =c(0, 20),pch = 19, xlab = "distributions", main = "x,y pmf",ylab = "probabilities")
points(0:10000, ypmf, col = "pink", pch = 19)
legend("topright",c("poisson(3)", "poisson(5)"),pch = c(19, 19), col = c("purple", "pink"))


#iii
#adding x and y. from part a, POI(3 +5) = POI(8) so lambda = mean = var = 8
z = x + y
mean(z)
var(z)


#iv 
#plotting empirical and theoretical cumulative dist. function
empiricalcdf <- ecdf(z)
plot(empiricalcdf, col = "blue", xlab = "z", ylab = "Fn(z)")
lines(seq(0, 20, by=1), ppois(seq(0, 20, by=1),lambda = 8),col="green")
legend("topleft",c("empirical", "theoretical"),pch = c(19, 19), col = c("blue", "green"))
#both plots are very close, they overlap
#check both plots aren't identical: 
empiricalcdf(5)
ppois(5, lambda = 8)