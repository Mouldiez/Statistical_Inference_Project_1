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

#iv plot empirical density histogram of s and compare to theoretical densoty function
hist(s, freq = FALSE, col = "purple")
points(pchisq(10000, df = 20), pch =19, col = "black")
#legend("topleft", ("empirical","theoretical"))




#v
empirical_s <- ecdf(s)
empirical_s(pchisq(13)) - empirical_s(7)
