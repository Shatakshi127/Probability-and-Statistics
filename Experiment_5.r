##Ques1

x=punif(45,min=0,max=60, lower.tail = FALSE)
print(x)
y<-punif(30,min=0,max=60)-punif(20,min=0,max=60)
print(y)

## Ques 2
dexp(3,1/2)

x=seq(0,5,0.03)
y=dexp(x,rate=1/2)
plot(x,y,xlab='x',ylab='y')

x1=seq(0,5,0.2)
y1=pexp(x1,rate=0.5)
plot(x1,y1,xlab='x',ylab='y')

pexp(3,rate=1/2)

n=1000
x_sum=rexp(n,0.5)
plot(density(x_sum),xlab='x',ylab='y')


##Ques3
a<-2
b<-1/3
prob=pgamma(1,shape=a,scale=b,lower.tail = FALSE)
print(prob)
qgamma(0.7,shape=a,scale=b)
