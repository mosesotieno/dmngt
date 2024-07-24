#' Create variable from set of variables whose values are not missing
#'
#' @param vars A set of variables that you want to create your variable
#'
#' @return A binary character vector with Yes or No
#' @export
#'
#' @examples
#' df <- data.frame (id = 1:10,
#' var1 = sample(c(1:2,NA), 10, replace=TRUE),
#' var2 = sample(c(1:2,NA), 10, replace=TRUE),
#' var3 = sample(c(3:5, NA), 10, replace=TRUE))
#' df |> dplyr::mutate(v4 = anymatch("var"))

anymatch <- function(vars){
  ifelse(rowSums(!is.na(dplyr::pick(dplyr::starts_with(vars)))), "Yes", "No")
}
