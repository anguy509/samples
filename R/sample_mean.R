#' Puts the various parts of speech together into a full phrase.
#'
#' @param vec a numeric vector
#' @param n A integer 
#' @return Mean of random sample of size n of vec
#'
#' @import stringr
#' @import glue
#' @import dplyr
#' @import purrr
#'
#' @export



sample_mean <- function(vec, n)
{
  sample <- sample(vec, n, replace = T)
  return(mean(sample))
}
