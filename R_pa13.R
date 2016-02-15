corrfunc<-function(direcpath,thr=0)
{
  
  dirt<-direcpath
  thresholdd<-thr
  #print(thresholdd)
  ##dat<-data.frame()
  dat<-vector(mode = "numeric",length = 0)
  allfiles<-list.files(dirt,full.names = TRUE)
  
  for(i in 1:332)
  {
    a<-read.csv(allfiles[i])
    b<-sum((!is.na(a$sulfate) & !is.na(a$nitrate))) 
    #print(b)
    
      if(b>thresholdd)
      { 
        #print("insideloop") 
        temp<-a[which(!is.na(a$sulfate)),]
         sub<-temp[which(!is.na(temp$nitrate)),]
         c<-cor(sub$sulfate,sub$nitrate)
         #print(c)
         dat<-c(dat,c)
      }      
    
  }
  dat
}