#
# Taylor Richardson 
# October 2, 2018
#
# Ho: u = 30,000
# Ha: u =/= 30,000
#
# Used z score to determine if the mean of the sales for the second round of ads were exactly 30,000
# We reject the hypothesis that the mean of the sales were exactly 30,000, with 99% confidence.
#


#Show us the ad analysis file
View(adanalysis)

#Give us a rough outline of the data in adanalysis 
str(adanalysis)

#Now we find the mean of the ad unit sales, and print it
mu <- mean(adanalysis$adtype2)
mu

#Now we find the standard deviation of the ad unit sales, and print it
sd <- sd(adanalysis$adtype2)
sd

#Calculate the z parameters
mu0 <- 30000
alpha <- 0.05
sigma <- 8.45
n <- nrow(adanalysis)

#Calculate the z score using the parameters defined above, and print it
z <- (mu - mu0) / (sigma / sqrt(n))
z

#Now we want to calculate the p value, with two tails so that
2*pnorm(abs(z), lower.tail = FALSE)
