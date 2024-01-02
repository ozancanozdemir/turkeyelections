#' @title show_province_and_party
#' @description A function that displays the election results of a specified political party in a given province, both as percentages and as absolute figures, in the form of a graph.
#' @return A visual that shows the election results of a specified political party in a given province
#' @examples
#' \donttest{
#' show_province_and_party()
#'}
#' @export
#'


show_province_and_party<-function(province,party,percentage=FALSE){
  library(tidyverse)
  genel_secim_1995_il<-turkeyelections::genel_secim_1995_il
  genel_secim_1999_il<-turkeyelections::genel_secim_1999_il
  genel_secim_2002_il<-turkeyelections::genel_secim_2002_il
  genel_secim_2007_il<-turkeyelections::genel_secim_2007_il
  genel_secim_2011_il<-turkeyelections::genel_secim_2011_il
  genel_secim_haziran_2015_il<-turkeyelections::genel_secim_haziran_2015_il
  genel_secim_kasim_2015_il<-turkeyelections::genel_secim_kasim_2015_il
  genel_secim_2018_il<-turkeyelections::genel_secim_2018_il
  genel_secim_2023_il<-turkeyelections::genel_secim_2023_il

  lst<-list(genel_secim_1995_il,genel_secim_1999_il,genel_secim_2002_il,
            genel_secim_2007_il,genel_secim_2011_il,genel_secim_haziran_2015_il,genel_secim_kasim_2015_il,genel_secim_2018_il,genel_secim_2023_il
  )

  names(lst)<-c("genel_secim_1995","genel_secim_1999","genel_secim_2002",
                "genel_secim_2007","genel_secim_2011","genel_secim_haziran_2015",
                "genel_secim_kasim_2015","genel_secim_2018","genel_secim_2023")

  index<-c()

  for(i in 1:length(lst)){
    if(sum(grepl(paste(party,"%"),colnames(lst[[i]])))==1){
      index[i]<-TRUE
    }else{
      index[i]<-FALSE
    }

  }

  sub_lst<-lst[index]

  dd<-data.frame()
  for(i in 1:length(sub_lst)){
    dd<-rbind(dd,sub_lst[[i]]|>filter(İl == stringr::str_to_sentence(province) |
                                        İl ==paste(stringr::str_to_sentence(province),"(toplam)") |
                                        İl== paste0(stringr::str_to_upper(province,locale = "tur"),"-1")|
                                        İl== stringr::str_to_upper(province,locale = "tur"))|>select(paste(party,"%")))
  }

  dd$secim<-names(sub_lst)
  dd$secim<-factor(dd$secim,levels = dd$secim)
  colnames(dd)<-c("oy","secim")
  if(percentage ==FALSE){
    p<-ggplot(dd,aes(x=secim,y=oy))+geom_bar(stat="identity")+coord_flip()+labs(title=paste(province,"/",party))
    return(p)
  }else{
    p<-ggplot(dd,aes(x=secim,y=oy))+geom_bar(stat="identity")+coord_flip()+labs(title=paste(province,"/",party))+
      geom_text(aes(label=paste("%",oy)))
    return(p)
  }

}

