#Part a
#ii
#using chi- sqaured to calculate P(7<= S <= 13) n= 20 so E(S) = 20 and var (S) = 40
#cumulative dist
pchisq(13, df = 20, lower.tail = TRUE) - pchisq(7, df = 20, lower.tail = TRUE)


#Part b
#i
x <- rchisq(20, df = 20 )
sum(x)
mean(x)
var(x)

#ii
s <- rchisq(10000, df = 20)
sum(s)
mean(s)
var(s)

#iv 
#plot empirical density histogram of s and compare to theoretical density function
hist(s, freq = FALSE, col = "purple")
lines(seq(3, 58, 0.1), dchisq(seq(3, 58, 0.1), df = 20), col = "black")
legend("topleft", c("empirical","theoretical"), pch = c(19,19), col = c("purple", "black"))

#plot empirical cumulative distribution and compare to theoretical probability curve

cumulative_s <- ecdf(s)

plot(cumulative_s,col = "purple", main = "Emprical distribution vs theoretical probability ")
lines(seq(3,58,0.1),pchisq(seq(3,58,0.1),df = 20), lty =2) #can barely see the different lines...
legend("topleft", c("empirical","theoretical"), pch = c(19,19), col = c("purple", "black"))






#v
empirical_s <- ecdf(s)
#find the empirical of P(7 <= S <= 13)
empirical_s(13) - empirical_s(7)
#check against theoretical from part a
pchisq(13, df = 20, lower.tail = TRUE) - pchisq(7, df = 20, lower.tail = TRUE)

