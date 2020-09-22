myDataset<-read.csv("paperDataset1.csv",header = TRUE)
#randDataset<-read.csv('paperDataset.csv',header = TRUE)
ts<-myDataset$Total_User_Score+myDataset$Network_socre
#ts<-randDataset$net_value
y<-ts
x<-myDataset$ip_values
totalScore<-ts
myfunction<-function(totalScore){
for(i in totalScore){
if(i<1.5){
 plot(x,y,xlab="ip values",ylab="net values", col = ifelse(i < 1.5,'red','white'), pch = 19,main = "network might be in a
danger of attack" )

}
 if(i>=1.5 && i<3.0){
 plot(x,y,xlab="ip values",ylab="net values", col = ifelse(i >= 1.5 && i<3.0 ,'orange','white'), pch = 19, main = "some
problems in network")

 }

 if(i>=3.0 && i<4.0){
 plot(x,y,xlab="ip values",ylab="net values", col = ifelse(i >= 3.0 && i<4.0 ,'yellow','white'), pch = 19,main = "Stable
network" )

 }
 if(i>=4 && i<=5){
 plot(y,x,ylab="ip values",xlab="net values", col = ifelse(i >= 4 && i<=5.0 ,'green','black'), pch = c(19,8),main = " ideal
network" )

 }

}
}
myfunction(totalScore)
str(myDataset)
summary(myDataset)
hist(myDataset$Web_Browser_Score,myDataset$ip_values,col = rainbow(7))
hist(myDataset$DNS_Score,myDataset$ip_values,col = rainbow(7))
hist(myDataset$OS_Score,myDataset$ip_values,col = rainbow(7))
hist(myDataset$Usage_Score,myDataset$ip_values,col = rainbow(7))
