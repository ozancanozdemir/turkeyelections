#' @title data_list
#' @description list the name of the data sets with the election names
#' @return A data frame representing the file names and election names
#' @examples
#' \donttest{
#' data_list()
#'}
#' @export
#'

data_list<-function(){
  data_name<-readRDS((list.files(path = paste0(.libPaths(),'/turkeyelections/data'), pattern = "\\.rds$",full.names = TRUE)))|>unlist()|>names()
  election_names<-c("2014 Cumhurbaşkanlığı Seçimi (İllere göre sonuçlar)",
                    "2014 Cumhurbaşkanlığı Seçimi (Türkiye geneli)",
                    "2018 Cumhurbaşkanlığı Seçimi (İllere göre sonuçlar)",
                    "2018 Cumhurbaşkanlığı Seçimi (Türkiye geneli)",
                    "2023 Cumhurbaşkanlığı Seçimi 2.Tur (İllere göre sonuçlar)",
                    "2023 Cumhurbaşkanlığı Seçimi 2.Tur (Türkiye geneli)",
                    "2023 Cumhurbaşkanlığı Seçimi 1.Tur (İllere göre sonuçlar)",
                    "2023 Cumhurbaşkanlığı Seçimi 1.Tur (Türkiye geneli)",
                    "1995 Milletvekili Genel Seçimi (İllere göre sonuçlar)",
                    "1995 Milletvekili Genel Seçimi (Türkiye geneli)",
                    "1999 Milletvekili Genel Seçimi (İllere göre sonuçlar)",
                    "1999 Milletvekili Genel Seçimi (Türkiye geneli)",
                    "2002 Milletvekili Genel Seçimi (İllere göre sonuçlar)",
                    "2002 Milletvekili Genel Seçimi (Türkiye geneli)",
                    "2007 Milletvekili Genel Seçimi (İllere göre sonuçlar)",
                    "2007 Milletvekili Genel Seçimi (Türkiye geneli)",
                    "2011 Milletvekili Genel Seçimi (İllere göre sonuçlar)",
                    "2011 Milletvekili Genel Seçimi (Türkiye geneli)",
                    "2018 Milletvekili Genel Seçimi (İllere göre sonuçlar)",
                    "2018 Milletvekili Genel Seçimi (Türkiye geneli)",
                    "2023 Milletvekili Genel Seçimi (İllere göre sonuçlar)",
                    "2023 Milletvekili Genel Seçimi (Türkiye geneli)",
                    "2015 Haziran Milletvekili Genel Seçimi (İllere göre sonuçlar)",
                    "2015 Haziran Milletvekili Genel Seçimi (Türkiye geneli)",
                    "2015 Kasım Milletvekili Genel Seçimi (İllere göre sonuçlar)",
                    "2015 Kasım Milletvekili Genel Seçimi (Türkiye geneli)",
                    "2004 Belediye Başkanlığı Seçimi (Türkiye geneli)",
                    "2009 Belediye Başkanlığı Seçimi (Türkiye geneli)",
                    "2009 Büyükşehir Belediye Başkanlığı Seçimi (Türkiye geneli)",
                    "2009 Belediye Başkanlığı Seçimi (İllere göre sonuçlar)",
                    "2014 Belediye Başkanlığı Seçimi (İllere göre sonuçlar)",
                    "2014 Belediye Başkanlığı Seçimi (Türkiye geneli)",
                    "2019 Belediye Başkanlığı Seçimi (İllere göre sonuçlar)",
                    "2019 Belediye Başkanlığı Seçimi (Türkiye geneli)")
  df<-data.frame(election_names,data_name)
  return(df)
}

