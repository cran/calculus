## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(calculus)

## -----------------------------------------------------------------------------
derivative(f = "sin(x)", var = "x")

## -----------------------------------------------------------------------------
sym <- derivative(f = "sin(x)", var = c(x = 0))
num <- derivative(f = function(x) sin(x), var = c(x = 0))

## ---- echo=FALSE--------------------------------------------------------------
print(c("Symbolic" = sym, "Numeric" = num))

## -----------------------------------------------------------------------------
sym <- derivative(f = "sin(x)", var = c(x = 0), order = 4)
num <- derivative(f = function(x) sin(x), var = c(x = 0), order = 4)

## ---- echo=FALSE--------------------------------------------------------------
print(c("Symbolic" = sym, "Numeric" = num))

## -----------------------------------------------------------------------------
derivative(f = "y^2*sin(x)", var = c("x", "y"), order = c(1, 2))

## -----------------------------------------------------------------------------
f <- function(x, y) y^2*sin(x)
derivative(f, var = c(x=0, y=0), order = c(1, 2), accuracy = 6)

## -----------------------------------------------------------------------------
derivative("x^2*y^2", var = c("x", "y"))

## -----------------------------------------------------------------------------
derivative("x^6*y^6", var = c("x", "y"), order = 6)

## -----------------------------------------------------------------------------
f <- function(x, y) x^2*y^2
derivative(f, var = c(x=1, y=2))

## -----------------------------------------------------------------------------
f <- function(x, y) c(x*y, x^2*y^2)
derivative(f, var = c(x=1, y=2))

## -----------------------------------------------------------------------------
f <- function(x) c(sum(x), prod(x))
derivative(f, var = c(0, 0, 0))

