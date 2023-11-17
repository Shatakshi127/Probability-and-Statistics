data=read.csv(file.choose())
dim(data)
head(data,5)
mean(data$Wall.Thickness)
hist(data$Wall.Thickness,col="red")

s10=c()
n=9000
for (i in 1:n){
  s10[i]=mean(sample(data$Wall.Thickness,10,replace=TRUE))
}
hist(s10,col="blue",main='sample size 10',xlab='wall thickeness')
abline(v=mean(s10),col='green')

s30=c()
s50=c()
s500=c()
n=9000
for (i in 1:n){
  s30[i]=mean(sample(data$Wall.Thickness,30,replace=TRUE))
  s50[i]=mean(sample(data$Wall.Thickness,50,replace=TRUE))
  s500[i]=mean(sample(data$Wall.Thickness,500,replace=TRUE))
}

par(mfrow=c(1,3))
hist(s30,col="pink")
abline(v=mean(s30),col='blue')
hist(s50,col='yellow')
abline(v=mean(s50))
hist(s500,col='red')
abline(v=mean(s500))
