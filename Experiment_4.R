#ques1
x <- c(0,1,2,3,4)
p <- c(0.41,0.37,0.16,0.05,0.01)
sum(x*p)
weighted.mean(x,p)
c(x%*%p)

#ques2
f <- function(t){0.1*exp(-0.1*t)}
I <- integrate(f,lower=0, upper=Inf)
print(I$value)

#ques3
x <- c(0,1,2,3)
p <- c(0.1,0.2,0.2,0.5)
Y <- 10*x - 12
sum(Y*p)

#ques4
f <- function(x){0.5*exp(-abs(x))}
I <- integrate(f,lower=1,upper=10)
print(I$value)
y1 <- I$value

f1 <- function(x){x*0.5*exp(-abs(x))}
I1 <- integrate(f1,lower=1,upper=10)
print(I1$value)
y2 <- I1$value

v <- y2 - y1 * y1
v

#ques5
f <- function(y){(3/4)*(1/4)^(sqrt(y)-1)}
x <- c(1,2,3,4,5)
y <- x^2
first_moment <- sum(y*f(y))
first_moment

second_moment <- sum(y*y*f(y))
second_moment

var <- second_moment - first_moment*first_moment
var