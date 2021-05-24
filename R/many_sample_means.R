#' Perform the sample_mean process many times (reps) and return a vector of the results
#'
#' @param vec A vector
#' @param n An integer representing sample size
#' @param reps An integer representing how many times sample_mean is performed
#' @return A vector of the results of sample mean being called reps times
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
many_sample_means <- function(vec, n , reps)
{
  return(replicate(reps, sample_mean(vec, n)))
}
