install.packages("pracma")
library(pracma)

# 1 a
f <- function(x,y) 2*(2*x + 3*y)/5
I = integral2 (f, xmin = 0, xmax = 1, ymin = 0, ymax = 1)
I$Q

# 1 b marginal distribution
g <- function(y) f(1,y)
gx <- integral(g, 0, 1)
gx

# 1 c
h <- function(x) f(x, 0)
hx <- integral(h, 0, 1)
hx

# 1 d
ev <- function(x,y) x*y*f(x,y)
expected_val <- integral2(ev, xmin = 0, xmax = 1, ymin = 0, ymax = 1)
expected_val$Q

# 2
f2 <- function(x,y) (x+y)/30
x2 <- c(0,1,2,3)
y2 <- c(0,1,2)

# 2 a
M1 <- matrix(c(f2(0, 0:2), f2(1,0:2), f2(2,0:2), f2(3, 0:2)), nrow = 4, ncol = 3, byrow = TRUE)
M1
M1b <- outer(x2, y2, f2)
M1b

# 2 b
sum(M1)

# 2 c
g2 <- apply(M1, 1, sum)
g2

# 2 d
h2 <- apply(M1, 2, sum)
h2

# 2 e
M1[1,2]/h2[2]

# 2 f

