#ques1
p_seven <- dbinom(7,12,1/6)
p_eight <- dbinom(8,12,1/6)
p_nine  <- dbinom(9,12,1/6)
n_sixes_1 <- p_seven + p_eight + p_nine
print(n_sixes)
    #alternate method
n_sixes_2 <- pbinom(9,12,1/6) - pbinom(6,12,1/6)
print(n_sixes_2)

#ques2
x <- pnorm(84,mean=72,sd=15.2,lower.tail=FALSE)
print(x)

#ques3(a)
no_cars_5 <- dpois(0,5)
print(no_cars_5)

#ques3(b)
no_cars_50 <- ppois(50,50) - ppois(47,50)
print(no_cars_50)

#ques4
exactly_three <- dhyper(3,m=17,n=233,k=5)
print(exactly_three)

#ques5(a)
x <- seq(0,31)
print(x)

#ques5(b)
pmf <- dbinom(x,31,0.447)
plot(x,pmf)

#ques5(c)
cdf <- pbinom(x,31,0.447)
plot(x,cdf)

#ques5(d)
mean<-mean(x)
variance<-var(x)
std<-sd(x)
print(mean)
print(variance)
print(std)