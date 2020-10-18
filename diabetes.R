# forward stepwise regression 
# R will choose which explanatory variable is most significant to the response variable, and then it will try adding another variable in addition to the first that next best desribes the data 
# step wise, Y~X3, then maybe Y~X3+X6, can be run in the opposite direction, converging on the simplest model possible 

diabetes<-read.table("diabetes.txt",header=T)
model<-lm(glucose~.,data=diabetes)
step(model)


model<-lm(glucose~1,data=diabetes)
step(model,direction="forward",scope=list(upper=terms(glucose~.,data=diabetes)))
