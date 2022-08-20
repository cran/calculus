## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(calculus)

## -----------------------------------------------------------------------------
a <- array(letters[1:6], dim = c(i=2, j=3))
b <- array(letters[1:3], dim = c(j=3, k=1))
einstein(a, b)

## -----------------------------------------------------------------------------
a <- array(letters[1:6], dim = c(2, 3))
b <- array(letters[1:3], dim = c(3, 1))
index(a) <- c("i", "j")
index(b) <- c("j", "k")
einstein(a, b)

## -----------------------------------------------------------------------------
a <- array(1:6, dim = c(i = 2, j = 3))
b <- array(1:4, dim = c(k = 2, i = 2))
c <- array(letters[1:4], dim = c(i = 2, i = 2))
einstein(a, b, c)

