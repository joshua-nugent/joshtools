# purrr needed for negate()
require(purrr)
`%nin%` <- negate(`%in%`)

expit <- function(lp){
  plogis(lp)
}

logit <- function(p){
  qlogis(p)
}

odds_ratio <- function(p1, p2){
  (p1 / (1-p1)) / (p2 / (1-p2))
}

