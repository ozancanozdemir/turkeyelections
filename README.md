# turkeyelections
****

This package is the first and only comprehensive and extensive resource dedicated to Turkish election results. Its purpose is to provide data that is both processable and facilitates analysis of local and general elections, as well as presidential elections held in Turkey between 1995 and 2023. Additionally, the package generates visuals that assist in deriving meaningful insights from these data.

<img src="https://github.com/ozancanozdemir/turkeyelections/assets/33122288/68f73024-fbf5-4316-bda4-00d055cc6eaa" width="200">


**You can read the package's article published in Journal of Statistics and Applied Sciences for more information about the package and its usage from [here](https://dergipark.org.tr/tr/pub/jsas/issue/85489/1456233)**

### Installation 

You can install the package either from GitHub 

```
remotes::install_github('ozancanozdemir/turkeyelections')
```

Or from CRAN

```
install.packages("turkeyelections")
```
### The Usage 

The package has 4 main functions.

+ ```data_list()``` It returns a data frame with two columns. The first column returns the name of the election, and second one represents the corresponding data name.

  ```
  > data_list()
                                                  election_names                           data_name

            2014 Cumhurbaşkanlığı Seçimi (İllere göre sonuçlar)                          cb_2014_il
                  2014 Cumhurbaşkanlığı Seçimi (Türkiye geneli)                     cb_2014_turkiye
            2018 Cumhurbaşkanlığı Seçimi (İllere göre sonuçlar)                          cb_2018_il
                  2018 Cumhurbaşkanlığı Seçimi (Türkiye geneli)                     cb_2018_turkiye
      2023 Cumhurbaşkanlığı Seçimi 2.Tur (İllere göre sonuçlar)               cb_2023_ikinci_tur_il
            2023 Cumhurbaşkanlığı Seçimi 2.Tur (Türkiye geneli)          cb_2023_ikinci_tur_turkiye
      2023 Cumhurbaşkanlığı Seçimi 1.Tur (İllere göre sonuçlar)                  cb_2023_ilk_tur_il
            2023 Cumhurbaşkanlığı Seçimi 1.Tur (Türkiye geneli)             cb_2023_ilk_tur_turkiye
          1995 Milletvekili Genel Seçimi (İllere göre sonuçlar)                 genel_secim_1995_il
               1995 Milletvekili Genel Seçimi (Türkiye geneli)            genel_secim_1995_turkiye
         1999 Milletvekili Genel Seçimi (İllere göre sonuçlar)                 genel_secim_1999_il
               1999 Milletvekili Genel Seçimi (Türkiye geneli)            genel_secim_1999_turkiye
         2002 Milletvekili Genel Seçimi (İllere göre sonuçlar)                 genel_secim_2002_il
               2002 Milletvekili Genel Seçimi (Türkiye geneli)            genel_secim_2002_turkiye
         2007 Milletvekili Genel Seçimi (İllere göre sonuçlar)                 genel_secim_2007_il
               2007 Milletvekili Genel Seçimi (Türkiye geneli)            genel_secim_2007_turkiye
         2011 Milletvekili Genel Seçimi (İllere göre sonuçlar)                 genel_secim_2011_il
               2011 Milletvekili Genel Seçimi (Türkiye geneli)            genel_secim_2011_turkiye
         2018 Milletvekili Genel Seçimi (İllere göre sonuçlar)                 genel_secim_2018_il
               2018 Milletvekili Genel Seçimi (Türkiye geneli)            genel_secim_2018_turkiye
         2023 Milletvekili Genel Seçimi (İllere göre sonuçlar)                 genel_secim_2023_il
               2023 Milletvekili Genel Seçimi (Türkiye geneli)            genel_secim_2023_turkiye
   2015 Haziran Milletvekili Genel Seçimi (İllere göre sonuçlar)         genel_secim_haziran_2015_il
       2015 Haziran Milletvekili Genel Seçimi (Türkiye geneli)    genel_secim_haziran_2015_turkiye
   2015 Kasım Milletvekili Genel Seçimi (İllere göre sonuçlar)           genel_secim_kasim_2015_il
         2015 Kasım Milletvekili Genel Seçimi (Türkiye geneli)      genel_secim_kasim_2015_turkiye
              2004 Belediye Başkanlığı Seçimi (Türkiye geneli)            yerel_secim_2004_turkiye
              2009 Belediye Başkanlığı Seçimi (Türkiye geneli)   yerel_secim_2009_belediye_turkiye
   2009 Büyükşehir Belediye Başkanlığı Seçimi (Türkiye geneli) yerel_secim_2009_buyuksehir_turkiye
        2009 Belediye Başkanlığı Seçimi (İllere göre sonuçlar)                 yerel_secim_2009_il
        2014 Belediye Başkanlığı Seçimi (İllere göre sonuçlar)                 yerel_secim_2014_il
              2014 Belediye Başkanlığı Seçimi (Türkiye geneli)            yerel_secim_2014_turkiye
        2019 Belediye Başkanlığı Seçimi (İllere göre sonuçlar)                 yerel_secim_2019_il
              2019 Belediye Başkanlığı Seçimi (Türkiye geneli)            yerel_secim_2019_turkiye

   ```

  +  ```show_results_for_turkey()  ``` It visualizes election results across Turkey, with the option to display the results either as percentages or as absolute numbers.
 
```show_results_for_turkey(genel_secim_2007_turkiye)```

![image](https://github.com/ozancanozdemir/turkeyelections/assets/33122288/01349aeb-b084-4245-95f7-1a989bc37f43)


```show_results_for_turkey(genel_secim_2007_turkiye,percentage =TRUE)```

![image](https://github.com/ozancanozdemir/turkeyelections/assets/33122288/19efe27d-b96b-4538-9785-694b184f1d91)



+ ```show_parliament()```  It visualizes parliament with respect to election results across Turkey.

```show_parliament(genel_secim_2002_turkiye)```

![image](https://github.com/ozancanozdemir/turkeyelections/assets/33122288/2d7c9ad5-0d6f-49d0-ab98-8b8fb2c90168)



+ ```show_province_and_party()``` It  displays the election results of a specified political party in a given province, both as percentages and as absolute figures, in the form of a graph.

```show_province_and_party("Ankara", "CHP")```

![image](https://github.com/ozancanozdemir/turkeyelections/assets/33122288/427d3a6a-14ac-4da5-b41c-b4d90f52d862)


```show_province_and_party("Ankara", "CHP",percentage =TRUE)```

![image](https://github.com/ozancanozdemir/turkeyelections/assets/33122288/e2b5bb0e-48c6-4e76-822a-1ffdac67de57)
