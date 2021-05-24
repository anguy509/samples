#' Perform the many_sample_means process for each of the values in the ns vector and return a data frame with the results
#'
#' @param vec A vector that will be sampled from
#' @param reps An integer reps that represents how many times many_sample_means will be performed
#' @param ns A vector representing the different values of n that will be passed into many_sample means
#'
#' @return A data frame with the results
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
sample_means_ns <- function(vec, reps, ns)
{
  return(map_df(ns, ~ tibble(sample_mean = many_sample_means(vec, .x, reps), n = .x)))
}
