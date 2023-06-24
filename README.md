# yugioh

R package for Yu-Gi-Oh

[![CodeFactor](https://www.codefactor.io/repository/github/Tomeriko96/yugioh/badge)](https://www.codefactor.io/repository/github/Tomeriko96/yugioh) [![R-CMD-check](https://github.com/Tomeriko96/yugioh/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Tomeriko96/yugioh/actions/workflows/R-CMD-check.yaml)

# Introduction

The `yugioh` package is an R package that provides functionalities for working with Yugioh card data.

You can install the `yugioh` package from GitHub using the `devtools` package:

```{r}
devtools::install_github("Tomeriko96/yugioh")
```

## Usage

To get started with the `yugioh` package, load the library and retrieve Yugioh card data:

```{r}
library(yugioh)

dfCards <- get_all_yugioh_cards()
```

# Data Source

The data used in this package is obtained from the Yugioh API (<https://db.ygoprodeck.com/api>). The API provides access to a comprehensive collection of Yugioh card information, including card details, types, attributes, and more.
