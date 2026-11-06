#Part a
#ii
#using chi- sqaured to calculate P(7<= S <= 13) n= 20 so E(S) = 20 and var (S) = 40
#cumulative dist
pchisq(13, df = 20, lower.tail = TRUE) - pchisq(7, df = 20, lower.tail = TRUE)
