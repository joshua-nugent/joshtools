# purrr needed for negate()
require(purrr)
`%nin%` <- negate(`%in%`)

expit <- function(lp){
  plogis(lp)
}

logit <- function(p){
  qlogis(p)
}

odds_ratio <- function(baseline_p, p2){
  # p1 is baseline
  (p2 / (1-p2)) / (baseline_p / (1-baseline_p))
}

rr_from_or <- function(or, baseline_p){
  or / ((1-baseline_p) + (baseline_p * or))
}
