#' Restore Variable Labels
#'
#' @param data Dataframe where you want to restore the variable labels
#' @param variable_labels A list of variables that created from `labels_keep`
#'
#' @return Dataframe with the restored variable labels
#' @export
#'
#' @examples
#' df <- data.frame(a1=floor(rnorm(10, 15, 5)),
#' a2 = gl(2, 2, 10))
#' attr(df[['a1']], 'label') <- 'Age'
#' attr(df[['a2']], 'label') <- 'Gender'
#' data_labels <- labels_keep(df)
#' labels_restore(df, data_labels)
labels_restore <- function(data, variable_labels){
  for (i in names(data)) {
    attr(data[[i]], "label") <- variable_labels[[i]]
  }
  return(data)
}
