# Global script for loading data from /data folder
data("cb_2014_il", envir = environment())
data("cb_2014_turkiye", envir = environment())
data("cb_2018_il", envir = environment())
data("cb_2018_turkiye", envir = environment())
data("cb_2023_ikinci_tur_il", envir = environment())
data("cb_2023_ikinci_tur_turkiye", envir = environment())
data("cb_2023_ilk_tur_il", envir = environment())
data("cb_2023_ilk_tur_turkiye", envir = environment())
data("genel_secim_1995_il", envir = environment())
data("genel_secim_1995_turkiye", envir = environment())
data("genel_secim_1999_il", envir = environment())
data("genel_secim_1999_turkiye", envir = environment())
data("genel_secim_2002_il", envir = environment())
data("genel_secim_2002_turkiye", envir = environment())
data("genel_secim_2007_il", envir = environment())
data("genel_secim_2007_turkiye", envir = environment())
data("genel_secim_2011_il", envir = environment())
data("genel_secim_2011_turkiye", envir = environment())
data("genel_secim_2018_il", envir = environment())
data("genel_secim_2018_turkiye", envir = environment())
data("genel_secim_2023_il", envir = environment())
data("genel_secim_2023_turkiye", envir = environment())
data("genel_secim_haziran_2015_il", envir = environment())
data("genel_secim_haziran_2015_turkiye", envir = environment())
data("genel_secim_kasim_2015_il", envir = environment())
data("genel_secim_kasim_2015_turkiye", envir = environment())
data("yerel_secim_2004_buyuksehir_turkiye", envir = environment())
data("yerel_secim_2009_belediye_turkiye", envir = environment())
data("yerel_secim_2009_buyuksehir_turkiye", envir = environment())
data("yerel_secim_2009_il", envir = environment())
data("yerel_secim_2014_buyuksehir_turkiye", envir = environment())
data("yerel_secim_2014_il", envir = environment())
data("yerel_secim_2019_buyuksehir_turkiye", envir = environment())
data("yerel_secim_2019_il", envir = environment())




globalVariables(c(
  names(cb_2014_il),
  names(cb_2014_turkiye),
  names(cb_2018_il),
  names(cb_2018_turkiye),
  names(cb_2023_ikinci_tur_il),
  names(cb_2023_ikinci_tur_turkiye),
  names(cb_2023_ilk_tur_il),
  names(cb_2023_ilk_tur_turkiye),
  names(genel_secim_1995_il),
  names(genel_secim_1995_turkiye),
  names(genel_secim_1999_il),
  names(genel_secim_1999_turkiye),
  names(genel_secim_2002_il),
  names(genel_secim_2002_turkiye),
  names(genel_secim_2007_il),
  names(genel_secim_2007_turkiye),
  names(genel_secim_2011_il),
  names(genel_secim_2011_turkiye),
  names(genel_secim_2018_il),
  names(genel_secim_2018_turkiye),
  names(genel_secim_2023_il),
  names(genel_secim_2023_turkiye),
  names(genel_secim_haziran_2015_il),
  names(genel_secim_haziran_2015_turkiye),
  names(genel_secim_kasim_2015_il),
  names(genel_secim_kasim_2015_turkiye),
  names(yerel_secim_2004_buyuksehir_turkiye),
  names(yerel_secim_2009_belediye_turkiye),
  names(yerel_secim_2009_buyuksehir_turkiye),
  names(yerel_secim_2009_il),
  names(yerel_secim_2014_buyuksehir_turkiye),
  names(yerel_secim_2014_il),
  names(yerel_secim_2019_buyuksehir_turkiye),
  names(yerel_secim_2019_il)
))


globalVariables(c("Parti", "Sandalye", "y", "Il", "secim", "oy", "Aday", "Yuzde","ggplot2","reorder"))


