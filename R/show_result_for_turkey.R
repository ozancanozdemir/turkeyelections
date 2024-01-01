#' @title show_result_for_turkey
#' @description A function that visualizes election results across Turkey, with the option to display the results either as percentages or as absolute numbers.
#' @return A visual that shows the percentages for each parties for the given election result
#' @examples
#' \donttest{
#' show_result_for_turkey()
#'}
#' @export
#'


show_result_for_turkey<-function(x,percentage =FALSE){
  if(grepl("turkiye",deparse(substitute(x))) & percentage ==FALSE){
    if(colnames(x)[1]=="Aday"){
      library(ggplot2)
      p<-ggplot2::ggplot(x,aes(x=reorder(Aday,Yüzde),y=Yüzde))+geom_bar(stat="identity",width = 0.8)+
        theme(axis.text.x = element_text(angle = 90),axis.title = element_blank())+coord_flip()+
        labs(title=deparse(substitute(x)))
      p
    } else{
      library(ggplot2)
      p<-ggplot2::ggplot(x,aes(x=reorder(Parti,Yüzde),y=Yüzde))+geom_bar(stat="identity",width = 0.8)+
        theme(axis.text.x = element_text(angle = 90),axis.title = element_blank())+coord_flip()+
        labs(title=deparse(substitute(x)))
      p
    }
  } else if(grepl("turkiye",deparse(substitute(x))) & percentage ==TRUE){
    if(colnames(x)[1]=="Aday"){
      library(ggplot2)
      p<-ggplot2::ggplot(x,aes(x=reorder(Aday,Yüzde),y=Yüzde))+geom_bar(stat="identity",width = 0.8)+
        theme(axis.text.x = element_text(angle = 90),axis.title = element_blank())+coord_flip()+
        geom_text(aes(label = paste("%",Yüzde)))+labs(title=deparse(substitute(x)))
      p
    }else{
      p<-ggplot2::ggplot(x,aes(x=reorder(Parti,Yüzde),y=Yüzde))+geom_bar(stat="identity",width = 0.8)+
        theme(axis.text.x = element_text(angle = 90),axis.title = element_blank())+coord_flip()+
        geom_text(aes(label = paste("%",Yüzde)))+labs(title=deparse(substitute(x)))
      p
    }
  }
  else{
    print("The function does not work with the data for the provinces.")
  }
}
