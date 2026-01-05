#' @title data_list
#' @description list the name of the data sets with the election names
#' @return A data frame representing the file names and election names
#' @examples
#' data_list()
#' @export
#'

data_list<-function(){
  data_name<-file_names <- c(
    "cb_2014_il",
    "cb_2014_turkiye",
    "cb_2018_il",
    "cb_2018_turkiye",
    "cb_2023_ikinci_tur_il",
    "cb_2023_ikinci_tur_turkiye",
    "cb_2023_ilk_tur_il",
    "cb_2023_ilk_tur_turkiye",
    "genel_secim_1995_il",
    "genel_secim_1995_turkiye",
    "genel_secim_1999_il",
    "genel_secim_1999_turkiye",
    "genel_secim_2002_il",
    "genel_secim_2002_turkiye",
    "genel_secim_2007_il",
    "genel_secim_2007_turkiye",
    "genel_secim_2011_il",
    "genel_secim_2011_turkiye",
    "genel_secim_2018_il",
    "genel_secim_2018_turkiye",
    "genel_secim_2023_il",
    "genel_secim_2023_turkiye",
    "genel_secim_haziran_2015_il",
    "genel_secim_haziran_2015_turkiye",
    "genel_secim_kasim_2015_il",
    "genel_secim_kasim_2015_turkiye",
    "yerel_secim_2004_buyuksehir_turkiye",
    "yerel_secim_2009_belediye_turkiye",
    "yerel_secim_2009_buyuksehir_turkiye",
    "yerel_secim_2009_il",
    "yerel_secim_2014_buyuksehir_turkiye",
    "yerel_secim_2014_il",
    "yerel_secim_2019_buyuksehir_turkiye",
    "yerel_secim_2019_il",
    "yerel_secim_2024_il",
    "yerel_secim_2024_turkiye"
  )

  election_names<-c("2014 Cumhurbaskanligi Secimi (Illere gore sonuclar)",
                    "2014 Cumhurbaskanligi Secimi (Turkiye geneli)",
                    "2018 Cumhurbaskanligi Secimi (Illere gore sonuclar)",
                    "2018 Cumhurbaskanligi Secimi (Turkiye geneli)",
                    "2023 Cumhurbaskanligi Secimi 2.Tur (Illere gore sonuclar)",
                    "2023 Cumhurbaskanligi Secimi 2.Tur (Turkiye geneli)",
                    "2023 Cumhurbaskanligi Secimi 1.Tur (Illere gore sonuclar)",
                    "2023 Cumhurbaskanligi Secimi 1.Tur (Turkiye geneli)",
                    "1995 Milletvekili Genel Secimi (Illere gore sonuclar)",
                    "1995 Milletvekili Genel Secimi (Turkiye geneli)",
                    "1999 Milletvekili Genel Secimi (Illere gore sonuclar)",
                    "1999 Milletvekili Genel Secimi (Turkiye geneli)",
                    "2002 Milletvekili Genel Secimi (Illere gore sonuclar)",
                    "2002 Milletvekili Genel Secimi (Turkiye geneli)",
                    "2007 Milletvekili Genel Secimi (Illere gore sonuclar)",
                    "2007 Milletvekili Genel Secimi (Turkiye geneli)",
                    "2011 Milletvekili Genel Secimi (Illere gore sonuclar)",
                    "2011 Milletvekili Genel Secimi (Turkiye geneli)",
                    "2018 Milletvekili Genel Secimi (Illere gore sonuclar)",
                    "2018 Milletvekili Genel Secimi (Turkiye geneli)",
                    "2023 Milletvekili Genel Secimi (Illere gore sonuclar)",
                    "2023 Milletvekili Genel Secimi (Turkiye geneli)",
                    "2015 Haziran Milletvekili Genel Secimi (Illere gore sonuclar)",
                    "2015 Haziran Milletvekili Genel Secimi (Turkiye geneli)",
                    "2015 Kasim Milletvekili Genel Secimi (Illere gore sonuclar)",
                    "2015 Kasim Milletvekili Genel Secimi (Turkiye geneli)",
                    "2004 Belediye Baskanligi Secimi (Turkiye geneli)",
                    "2009 Belediye Baskanligi Secimi (Turkiye geneli)",
                    "2009 Buyuksehir Belediye Baskanligi Secimi (Turkiye geneli)",
                    "2009 Belediye Baskanligi Secimi (Illere gore sonuclar)",
                    "2014 Belediye Baskanligi Secimi (Illere gore sonuclar)",
                    "2014 Belediye Baskanligi Secimi (Turkiye geneli)",
                    "2019 Belediye Baskanligi Secimi (Illere gore sonuclar)",
                    "2019 Belediye Baskanligi Secimi (Turkiye geneli)",
                    "2024 Belediye Baskanligi Secimi (Illere gore sonuclar)",
                    "2024 Belediye Baskanligi Secimi (Turkiye geneli)")
  df<-data.frame(election_names,data_name)
  return(df)
}

