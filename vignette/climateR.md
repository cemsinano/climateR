climateR
================
Cem Sinan, Nazli Ozum, Tarini Bhatnagar, Akshi Chaudhary
2018-04-13

`climateR`
==========

R wrapper for [MetaWeather API](https://www.metaweather.com/api/)

Contributors
------------

-   `Akshi Chaudhary`: [akshi8](https://github.com/akshi8)
-   `Cem Sinan Ozturk`: [cemsinano](https://github.com/cemsinano)
-   `Nazli Ozum Kafaee`: [nazliozum](https://github.com/nazliozum)
-   `Tarini Bhatnagar`: [tarinib](https://github.com/tarinib)

Latest
------

-   Release: v1.0

About
-----

climateR is a R API wrapper which offers offers 3 functions that enable the user to call for data from the [MetaWeather API](https://www.metaweather.com/api/):

-   `get_weather(cities, continent)`: Maps the weather state of given cities (all from same continent) on the current date.

-   `sunrise(city)`: Gets sunrise and sunset time as well as the total day time of a particular city on the current date.

-   `getpastinfo(city_name, date)`: Gets minimum temperature, maximum temperatures, average wind speed, and average humidity of a particular city on a given date.

Installation
------------

You can install climateR from Github with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-MDS/climateR")
```

Usage Examples
--------------

-   **get\_weather(cities, continent)**

``` r
library(climateR)
# Plot weather state of Vancouver and Seattle on map

get_weather(cities = c("Vancouver", "Seattle", "Boston"), continent = "North America")
```

    ## [1] "Vancouver"
    ## [1] "Seattle"
    ## [1] "Boston"

    ## Map from URL : http://maps.googleapis.com/maps/api/staticmap?center=North+America&zoom=3&size=640x640&scale=2&maptype=terrain&language=en-EN&sensor=false

    ## Information from URL : http://maps.googleapis.com/maps/api/geocode/json?address=North%20America&sensor=false

![](climateR_files/figure-markdown_github/unnamed-chunk-2-1.png)

-   **suntime()**

``` r
# Get sunrise, sunset, and total day time for Instanbul today

suntime("Istanbul")
```

    ## $sunrise
    ## [1] "03:26:53"
    ## 
    ## $sunset
    ## [1] "16:42:34"
    ## 
    ## $day_time
    ## [1] "13 hours and 16 minutes"

-   **getpastinfo()**

``` r
# Get value for Vancouver on 2017/8/30

getpastinfo("Vancouver", "2017/8/30")
```

    ## $min_temp
    ## [1] 16.10833
    ## 
    ## $max_temp
    ## [1] 21.51667
    ## 
    ## $windspeed
    ## [1] 4.64
    ## 
    ## $humidity
    ## [1] 67.32

License
-------

-   MIT License

Future Developments
-------------------

The `climateR` wrapper will be improved in the future to include weather icons and cities from different parts of the world and not just from one continent.

Contributing
------------

This is an open source project. Please follow the guidelines below for contribution. - Open an issue for any feedback and suggestions. - For contributing to the project, please refer to [Contributing](CONTRIBUTING.md) for details.

This is an open source project. So feedback, suggestions and contributions are very welcome. For feedback and suggestions, please open an issue in this repo. If you are willing to contribute this package, please refer to [Contributing](CONTRIBUTING.md) guidelines for details. Add a new chunk by clicking the *Insert Chunk* button on the toolbar or by pressing *Ctrl+Alt+I*.

When you save the notebook, an HTML file containing the code and output will be saved alongside it (click the *Preview* button or press *Ctrl+Shift+K* to preview the HTML file).

The preview shows you a rendered HTML copy of the contents of the editor. Consequently, unlike *Knit*, *Preview* does not run any R code chunks. Instead, the output of the chunk when it was last run in the editor is displayed.
