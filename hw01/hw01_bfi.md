hw01\_exploring bfi
================
Naidan Tu
1/21/2021

### Assign bfi data as a new object data

``` r
data <- psych::bfi
```

### The first part of data

``` r
head(data)
```

    ##       A1 A2 A3 A4 A5 C1 C2 C3 C4 C5 E1 E2 E3 E4 E5 N1 N2 N3 N4 N5 O1 O2 O3 O4
    ## 61617  2  4  3  4  4  2  3  3  4  4  3  3  3  4  4  3  4  2  2  3  3  6  3  4
    ## 61618  2  4  5  2  5  5  4  4  3  4  1  1  6  4  3  3  3  3  5  5  4  2  4  3
    ## 61620  5  4  5  4  4  4  5  4  2  5  2  4  4  4  5  4  5  4  2  3  4  2  5  5
    ## 61621  4  4  6  5  5  4  4  3  5  5  5  3  4  4  4  2  5  2  4  1  3  3  4  3
    ## 61622  2  3  3  4  5  4  4  5  3  2  2  2  5  4  5  2  3  4  4  3  3  3  4  3
    ## 61623  6  6  5  6  5  6  6  6  1  3  2  1  6  5  6  3  5  2  2  3  4  3  5  6
    ##       O5 gender education age
    ## 61617  3      1        NA  16
    ## 61618  3      2        NA  18
    ## 61620  2      2        NA  17
    ## 61621  5      2        NA  17
    ## 61622  3      1        NA  17
    ## 61623  1      2         3  21

### Column names of data

``` r
colnames(data)
```

    ##  [1] "A1"        "A2"        "A3"        "A4"        "A5"        "C1"       
    ##  [7] "C2"        "C3"        "C4"        "C5"        "E1"        "E2"       
    ## [13] "E3"        "E4"        "E5"        "N1"        "N2"        "N3"       
    ## [19] "N4"        "N5"        "O1"        "O2"        "O3"        "O4"       
    ## [25] "O5"        "gender"    "education" "age"

### Mean of the first column excluding the missing values

``` r
mean(data[,1], na.rm = T)
```

    ## [1] 2.413434

### Number of rows

``` r
nrow(data)
```

    ## [1] 2800
