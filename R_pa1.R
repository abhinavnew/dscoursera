
a<-function(x){
  dirt<-x
dirt2<-list.files(dirt,pattern="\\.csv")
d<-paste(dirt,dirt2,sep = "/")
tabless<-lapply(d,read.csv,header=TRUE)

pmean<-do.call(rbind,tabless)
}






