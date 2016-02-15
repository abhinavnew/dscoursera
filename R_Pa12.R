completecalladv<-function(pathoffolder,idd=1:332){
  dirt<-pathoffolder
  dat<-data.frame()
  all_files<-list.files(dirt,full.names = TRUE)
  
  for(i in idd){
    a<-read.csv(all_files[i])
    obs<-sum(complete.cases(a))
    tmp<-data.frame(i,obs)
    dat<-rbind(dat,tmp)
  }
  dat
}
  #dirt2<-list.files(dirt,pattern="\\.csv")
  
  #d<-paste(dirt,dirt2,sep = "/")
  #tabless<-lapply(d,read.csv,header=TRUE)
  
 # pmean<-do.call(rbind,tabless)

