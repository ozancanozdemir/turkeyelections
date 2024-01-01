# turkeyelections
****

This package is the first and only comprehensive and extensive resource dedicated to Turkish election results. Its purpose is to provide data that is both processable and facilitates analysis of local and general elections, as well as presidential elections held in Turkey between 1995 and 2023. Additionally, the package generates visuals that assist in deriving meaningful insights from these data.

<img src="https://github.com/ozancanozdemir/turkeyelections/assets/33122288/044ead27-1f4b-4c7b-8e4e-37bd0b95e031" width="200">

### Installation 

Since the package is available only on GitHub, you can use the following command for the installation. 

```
remotes::install_github('ozancanozdemir/turkeyelections')
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

  ![image](https://github.com/ozancanozdemir/turkeyelections/assets/33122288/aecc60f8-70ea-44c7-ab98-aa9cb6823aed)

```show_results_for_turkey(genel_secim_2007_turkiye,percentage =TRUE)```

![image](https://github.com/ozancanozdemir/turkeyelections/assets/33122288/273f5cd2-c941-4c31-8a3c-ddf44f97396f)


+ ```show_parliament()```  It visualizes parliament with respect to election results across Turkey.

```show_parliament(genel_secim_2002_turkiye)```

![image](https://github.com/ozancanozdemir/turkeyelections/assets/33122288/8c7153d4-c3cd-4a3f-906d-7a800293ac33)


+ ```show_province_and_party()``` It  displays the election results of a specified political party in a given province, both as percentages and as absolute figures, in the form of a graph.

```show_province_and_party("Ankara", "CHP")```

![image](https://github.com/ozancanozdemir/turkeyelections/assets/33122288/df1ff395-758d-4baa-b334-719c53a21de9)

```show_province_and_party("Ankara", "CHP",percentage =TRUE)```

![image](https://github.com/ozancanozdemir/turkeyelections/assets/33122288/20a95b35-efd7-44f8-aa6a-4c18ecb16d32)
