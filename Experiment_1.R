#ques1 
x = c(5,10,15,20,25,30)
print('vector')
max(x)
min(x)
print(paste('maximum of x is :',max(x)))

#ques2
fac = as.integer(readline(prompt="enter a number"))
factorial = 1
if (fac<0) {
  print("error")
} else if (fac==0) {
  print("Factorial of 0 is 1")
} else {
  for (i in 1:fac) {
    factorial = factorial * i
  }
  print(paste('factorial of',fac,'is',factorial))
}

#ques3
nterms = as.integer(readline(prompt="enter the number"))
n1=0
n2=1
count=2
if (nterms<=0) {
  print("error: enter a positive number")
} else if(nterms==1) {
  print("fibonacci series : ")
  print(n1)
} else if(nterms==2) {
  print("fibonacci series : 0,1")
  print(n1)
  print(n2)
} else {
  print("fibonacci series : ")
  print(n1)
  print(n2)
  while(count < nterms) {
    nth = n1+n2
    print(nth)
    n1 = n2
    n2 = nth
    count = count+1
  }
}

#ques4
operation = as.integer(readline(prompt="enter 1 for addition,2 for subtraction,3 for multiplication and 4 for division: "))
number1 = as.integer(readline(prompt="enter number 1: "))
number2 = as.integer(readline(prompt="enter number 2: "))

if(operation==1) {
  print(paste("addition = ",number1+number2))
} else if (operation==2) {
  if (number1 > number2) {
    print(paste("subtraction = ",number1-number2))
  } else {
    print(paste("subtraction = ",number2-number1))
  }
} else if (operation==3) {
  print(paste("multiplication = ",number1*number2))
} else if (operation==4) {
  if (number1 > number2) {
    print(paste("division = ",number1/number2))
  } else {
    print(paste("division = ",number2/number1))
  }
} else {
  print("invalid operation")
}

#ques5
x<-c(1,5,7)
y<-c(2,6,8)
#plot(x,y)
plot(1:5,type='l')
plot(1:5,main='graph',xlab='x-axis',ylab='y-axis',col='red',cex=0.5,pch=25)

x1<-c(1,2,3,4,5)
y1<-x1+3

x2<-x1+1
y2<-y1+4
#plot(x1,y1,pch=25,col='purple',type='l')
points(x2,y2,pch=20,col='black')
