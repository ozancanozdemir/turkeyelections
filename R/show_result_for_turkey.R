#' @title show_result_for_turkey
#' @description A function that visualizes election results across Turkey, with the option to display the results either as percentages or as absolute numbers.
#' @return A visual that shows the percentages for each parties for the given election result
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 aes
#' @importFrom ggplot2 geom_bar
#' @importFrom ggplot2 coord_flip
#' @importFrom ggplot2 labs
#' @importFrom ggplot2 geom_text
#' @importFrom ggplot2 element_text
#' @importFrom ggplot2 element_blank
#' @importFrom stats reorder
#' @import ggplot2
#' @param x the name of the data frame to be visualized. It is supposeed to be the one including name turkey in the file name.
#' @param percentage It is a boolean argument which allows you to print the plot with the percentage or not
#' @examples
#' \donttest{
#' show_result_for_turkey()
#'}
#' @export
#'


show_result_for_turkey<-function(x,percentage =FALSE){
  if(grepl("turkiye",deparse(substitute(x))) & percentage ==FALSE){
    if(colnames(x)[1]=="Aday"){
      requireNamespace(ggplot2)
      p<-ggplot2::ggplot(x,ggplot2::aes(x=stats::reorder(Aday,Yuzde),y=Yuzde))+
        ggplot2::geom_bar(stat="identity",width = 0.8)+
        ggplot2::theme(axis.text.x = element_text(angle = 90),axis.title = element_blank())+
        ggplot2::coord_flip()+
        ggplot2::labs(title=deparse(substitute(x)))
      p
    } else{

      p<-ggplot2::ggplot(x,ggplot2::aes(x=reorder(Parti,Yuzde),y=Yuzde))+
        ggplot2::geom_bar(stat="identity",width = 0.8)+
        ggplot2::theme(axis.text.x = element_text(angle = 90),axis.title = element_blank())+
        ggplot2::coord_flip()+
        ggplot2::labs(title=deparse(substitute(x)))
      p
    }
  } else if(grepl("turkiye",deparse(substitute(x))) & percentage ==TRUE){
    if(colnames(x)[1]=="Aday"){

      p<-ggplot2::ggplot(x,ggplot2::aes(x=reorder(Aday,Yuzde),y=Yuzde))+
        ggplot2::geom_bar(stat="identity",width = 0.8)+
        ggplot2::theme(axis.text.x = element_text(angle = 90),axis.title = element_blank())+
        ggplot2::coord_flip()+
        ggplot2::geom_text(aes(label = paste("%",Yuzde)))+labs(title=deparse(substitute(x)))
      p
    }else{
      p<-ggplot2::ggplot(x,ggplot2::aes(x=reorder(Parti,Yuzde),y=Yuzde))+
        ggplot2::geom_bar(stat="identity",width = 0.8)+
        ggplot2::theme(axis.text.x = element_text(angle = 90),axis.title = element_blank())+
        ggplot2::coord_flip()+
        ggplot2::geom_text(aes(label = paste("%",Yuzde)))+labs(title=deparse(substitute(x)))
      p
    }
  }
  else{
    message("The function does not work with the data for the provinces.")
  }
}
