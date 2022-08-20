## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
knitr::opts_knit$set(
  global.par = TRUE
)

## ----setup--------------------------------------------------------------------
library(calculus)

## ---- echo=FALSE--------------------------------------------------------------
par(mar = c(4, 4, 1, 1))

## -----------------------------------------------------------------------------
f <- "x"
var <- c(x=1)
times <- seq(0, 2*pi, by=0.001)
x <- ode(f = f, var = var, times = times)
plot(times, x, type = "l")

## -----------------------------------------------------------------------------
f <- "cos(t)"
var <- c(x=0)
times <- seq(0, 2*pi, by=0.001)
x <- ode(f = f, var = var, times = times, timevar = "t")
plot(times, x, type = "l")

## -----------------------------------------------------------------------------
f <- c("x", "x*(1+cos(10*t))")
var <- c(x=1, y=1)
times <- seq(0, 2*pi, by=0.001)
x <- ode(f = f, var = var, times = times, timevar = "t")
matplot(times, x, type = "l", lty = 1, col = 1:2)

## -----------------------------------------------------------------------------
f <- function(x, y) c(x, y)
var <- c(x=1, y=2)
times <- seq(0, 2*pi, by=0.001)
x <- ode(f = f, var = var, times = times)
matplot(times, x, type = "l", lty = 1, col = 1:2)

## -----------------------------------------------------------------------------
f <- function(x, t) c(x[1], x[2], x[2]*(1+cos(10*t)))
var <- c(1,2,2)
times <- seq(0, 2*pi, by=0.001)
x <- ode(f = f, var = var, times = times, timevar = "t")
matplot(times, x, type = "l", lty = 1, col = 1:3)

