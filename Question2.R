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