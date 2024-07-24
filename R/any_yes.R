#' Title
#'
#' @param .data Dataframe that you want to create the variable in
#' @param variable The variable name that you want to give to collapsed variable
#' @param varcollapse The list of variables that you want to use to create the variable mentioned
#'
#' @return Dataframe with the newly created variable
#' @export
#'
#' @examples
#' df <- data.frame (id = 1:10,
#' var1 = factor(round(runif(20, 1, 3)),labels = c("Yes", "No", "N/A")),
#' var2 = factor(round(runif(20, 1, 3)),labels = c("Yes", "No", "N/A")),
#' var3 = factor(round(runif(20, 1, 3)),labels = c("Yes", "No", "N/A")))
#' df |> any_yes("ouctome", c("var1", "var2", "var3"))
any_yes <- function(.data, variable, varcollapse){
  .data %>%
    mutate(!!variable := ifelse(rowSums(
      select(., all_of(varcollapse)) == "Yes") > 0, "Yes", "No"))


}
