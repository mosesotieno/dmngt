#' Collapse variables with 'Yes' response into one variable
#'
#' @param varcollapse The list of variables that you want to use to create the variable mentioned
#'
#' @return A binary character vector with Yes or No
#' @export
#'
#' @examples
#' df <- data.frame (id = 1:10,
#' var1 = factor(round(runif(20, 1, 3)),labels = c("Yes", "No", "N/A")),
#' var2 = factor(round(runif(20, 1, 3)),labels = c("Yes", "No", "N/A")),
#' var3 = factor(round(runif(20, 1, 3)),labels = c("Yes", "No", "N/A")))
#' df |> dplyr::mutate(ouctome =  any_yes(c("var1", "var2", "var3")))
any_yes <- function(varcollapse){

  ifelse(rowSums(dplyr::pick(dplyr::all_of(varcollapse)) == "Yes") > 0, "Yes", "No")


}
