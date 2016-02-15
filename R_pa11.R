#Fucntion to calc mean
pollmean<-function(dfidnum=1:332,dfcolumn){
  df1<-subset(pmean_df,ID %in% dfidnum)
  df2<-mean(df1[,dfcolumn],na.rm = TRUE)
  print(df2)
  
}
# function for getting no of complete observation from ready df
countcomplete<-function(idnum=1:332){
  outputdf<-data.frame(iddf=idnum,nobs=0)
   
  a<-pmean_df[pmean_df$ID %in% idnum,]
  for(i in idnum){
    c<-sum(complete.cases(a))
    outputdf[i,"nobs"]<-c
    
    
  }
  
  
  
 
  outputdf
}
